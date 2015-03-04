function meanF
% FORMAT meanF
%
% Calculate p values for probability of any effect in an 
% F map for a given analysis (as defined by SPM F contrast)
% using Worsley's average F test
%
% Matthew Brett 21/6/99 - using code by Tom Nichols
% Licensed under the BSD 2-clause license

% Get stuff from spm analysis files
SPMmat= spm_get(1, 'SPM.mat', 'Select SPM file for analysis');
load(SPMmat)
SPMdir = spm_str_manip(SPMmat, 'hd');
if (~exist('SPMid')==1)   % new format
  error('The program requires spm99 results format');
else
    toload = [SPMdir filesep 'xCon.mat'];
  if exist(toload,'file'), load(toload)
  else, xCon = []; end
  [Ic, xCon] = spm_conman(xX,xCon,'F',1,'Select F contrast...');
  if ~isfield(xCon(Ic),'eidf') | isempty(xCon(Ic).eidf)
    [trMV,trMVMV] = spm_SpUtil('trMV',xCon(Ic).X1o,xX.V);
    xCon(Ic).eidf  = trMV^2/trMVMV;
  end
end

% Check for SPMF
if isempty(xCon(Ic).Vspm)
  error('F contrast has not been evaluated yet');
end
Fimgname = fullfile(SPMdir, xCon(Ic).Vspm.fname);
if ~(exist(Fimgname, 'file'))
  error(['F image file ' Fimgname ' does not exist']);
end
FimgV = spm_vol(Fimgname);

% Volume, resels and smoothness 
%------------------------------------------------------------------------
if xCon(Ic).Vspm.dim(3) > 1
  D = 3;% dimension of SPM
else
  D=2;
end
d     = R(end)*(4*log(2)/pi)^(D/2);   		% effect. spatial df

% df
h = xCon(Ic).eidf;   % df for effects of interest
nu = xX.erdf;  % df due to error, whole model

% average F
mF = mean(spm_sample_vol(FimgV, XYZ(1, :), XYZ(2, :), XYZ(3,:), 0));

% Global F-stat
%-----------------------------------------------------------
Fdf    = [d*h, d*nu-(d-1)*(4*h+2*nu)/(h+2)];
Fstat  = (nu-2)/nu*Fdf(2)/(Fdf(2)-2)*mF;
pFstat = 1-spm_Fcdf(Fstat,round(Fdf));

% Report on the terminal
%-----------------------------------------------------------
fprintf('F test for any effect in F image\n');
fprintf('Analysis in %s\n', SPMdir);
fprintf('F contrast name: %s\n', xCon(Ic).name);
fprintf('df (EoI): %.2f, df (error): %0.2f\n', h, nu);
fprintf('Spatial df (EoI): %.2f, spatial df (error): %0.2f\n', Fdf);
fprintf('Mean F: %9.2f, F: %9.2f, p: %0.6f\n', mF, Fstat, pFstat);


