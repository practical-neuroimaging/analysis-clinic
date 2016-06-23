###############
Clinics to date
###############

************************************
Temporal derivative and slice timing
************************************

Notebook on `temporal derivatives
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/temporal_derivatives.ipynb>`_

References:

Eklund, A., Andersson, M., Josephson, C., Johannesson, M., and
Knutsson, H. (2012). Does parametric fMRI analysis with SPM yield
valid results?—An empirical study of 1484 rest datasets. NeuroImage
61, 565–578.

Jason Steffener, Matthias Tabert, Aaron Reuben, Yaakov Stern, Investigating
hemodynamic response variability at the group level using basis functions,
NeuroImage, Volume 49, Issue 3, 1 February 2010, Pages 2113-2122, ISSN
1053-8119, http://dx.doi.org/10.1016/j.neuroimage.2009.11.014.
(http://www.sciencedirect.com/science/article/pii/S1053811909011987) Keywords:
fMRI; Hemodynamic response; Delay; Brain imaging; Basis sets; Group analysis

*********************************************
Thinking about power in neuroimaging analyses
*********************************************

February 9, 2015

Notebook on `power in neuroimaging
<http://nbviewer.ipython.org/github/jbpoline/power_issues/blob/master/NSS_power_issues.ipynb>`_

(No clinic February 16, Presidents' day).

***********************************
Evaluation of the statistical model
***********************************

February 23, 2015

Notebook on `comparing models
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/model_validation_101.ipynb>`_

Matthew mentioned the Worsley average (global) F-test for testing if a
particular F-test is significant on average across voxels |--| and therefore
whether to drop or keep the regressors in the F test.  There is some very old
MATLAB code to compute this test :download:`here </code/meanF.m>` that may
well need adapting to newer versions of SPM.

****************************
Correlated regressors, power
****************************

March 2, 2015

Notebook on `correlated regressors
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/correlated_regressors.ipynb>`_

Notebook on `optimizing designs
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/optimizing_designs.ipynb>`_

We will cover optimizing designs properly in the March 23rd clinic.

*****************************************
Within-subject registration and fieldmaps
*****************************************

March 9, 2015

Exploring some DICOMs from the ``gre_field_mapping`` sequence - `notebook on
investigating fieldmaps
<http://nbviewer.ipython.org/github/practical-neuroimaging/analysis-clinic/blob/master/investigating_fieldmaps.ipynb>`_.

Useful links:

* http://nipy.org/nibabel/coordinate_systems.html
* http://www.mccauslandcenter.sc.edu/CRNL/tools/fieldmap
* https://bitbucket.org/matthewbrett/spm-versions/src/master/spm12/toolbox/FieldMap/FieldMap_principles.man

Jezzard P & Balaban RS. 1995. Correction for geometric distortion in
echo planar images from Bo field variations. MRM 34:65-73.

**********************
Fieldmaps extravaganza
**********************

March 16, 2015

Alex Huth kindly provided his :download:`presentation on EPI unwarping <EpiUnwarping.pdf>`.

**********************************************
Optimizing designs, orthogonalizing regressors
**********************************************

March 23, 2015

Notebook on `optimizing designs
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/optimizing_designs.ipynb>`_

Notebook on `correlated regressors
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/correlated_regressors.ipynb>`_

******************************************************
Multiple comparison correction, non-parametric methods
******************************************************

April 6th, 2015

Notebook on `FDR
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/FDR.ipynb>`_

Useful paper on difference in performance between different FWE methods:

Nichols, Thomas, and Satoru Hayasaka. "Controlling the familywise error rate
in functional neuroimaging: a comparative review." Statistical methods in
medical research 12.5 (2003): 419-446.
http://www-personal.umich.edu/~nichols/FWEfNI.pdf

*********************************
On choosing a connectivity metric
*********************************

April 13th, 2015

Derek Nee presented on :download:`How I Learned to Stop
Worrying and Use DCM <choosing_dcm.pdf>`.

*********************
Spatial normalization
*********************

April 20th, 2015

We talked about:

* the importance of the image affine for registration - see
  http://nipy.org/nibabel/coordinate_systems.html for a tutorial;
* diffeomorphic non-linear image registration for spatial normalization:

  * In SPM with `DARTEL <http://cslras.pbworks.com/f/DARTEL.pdf>`_;
  * In ANTS_

We also referred to the paper we'll be discussing next week.

*******************************
Assessing normalization methods
*******************************

April 27th, 2015

A journal club on:

Klein, Arno, et al. "Evaluation of 14 nonlinear deformation algorithms applied
to human brain MRI registration." Neuroimage 46.3 (2009): 786-802.

This paper attempts to do an objective comparison of different spatial
normalization methods including SPM, FSL and ANTS_

The SyN method referred to in Klein's paper is *symmetric diffeomorphic
normalization* |--| part of the ANTS software package.

Another less well-known package that did well in the tests is `ART
<https://www.nitrc.org/projects/art>`_.

We had a fruitful and robust discussion about:

* the overall purpose of spatial normalization;  is to increase overlap of
  functionally homologous areas? (as MB believes); does it vary according to
  the aim of the study (as JB believes)?  Should we constrain ourselves to
  thinking only of the structural image?
* how much weight we can put on border drawn by specialists in neuroanatomy;
* what is the role of functional *data* in spatial normalization?
* how can we reasonably assess whether spatial normalization has been
  successful in a way that is independent of the measures the different
  methods are optimizing in doing the match?

*************************************
Seminar on diffusion imaging analysis
*************************************

May 4th, 2015

by Ariel Rokem.  See: :doc:`dwi_seminar`.

********************************
Hands-on normalization with ANTS
********************************

May 11th, 2015

Arielle Tambini showed us how to use the ANTS registration tools.

Her presentation is :download:`here </ants_condensed.pdf>`.

********************************************
Journal club on FMRI noise and FMRI networks
********************************************

May 18th, 2015

Daniel Sheltraw will lead a discussion on the following paper:

Molly G. Bright, Kevin Murphy, Is fMRI “noise” really noise? Resting state
nuisance regressors remove variance with network structure, NeuroImage,
Available online 7 April 2015, ISSN 1053-8119,
http://dx.doi.org/10.1016/j.neuroimage.2015.03.070.
(http://www.sciencedirect.com/science/article/pii/S1053811915002669)

***************************************
Journal club on false positives in FMRI
***************************************

June 8th, 2015

A journal club on this paper:

Eklund, A., Andersson, M., Josephson, C., Johannesson, M., and
Knutsson, H. (2012). Does parametric fMRI analysis with SPM yield
valid results?—An empirical study of 1484 rest datasets. NeuroImage
61, 565–578.

http://dx.doi.org/10.1016/j.neuroimage.2012.03.093
http://www.sciencedirect.com/science/article/pii/S1053811912003825

The paper suggests that SPM (and maybe other packages) can have an extremely
high false positive rates for real data, especially data with short TR.

We also briefly looked at the `follow up conference paper
<https://dl.dropboxusercontent.com/u/4494604/article.pdf>`_ discussed in `this
NeuroSkeptic
<http://blogs.discovermagazine.com/neuroskeptic/2015/05/07/inflated-false-positives-in-fmri-spm-fsl-and-afni>`_
blog post.

The general conclusion is that family-wise false positive error rates for
standard first-level (within-subject) FMRI designs seem to be far too high in
real (resting state) data.  We started off discussing the very simple SPM
autocorrelation model, but is was not clear that this was in fact at fault, and
it appears from the follow-up paper that FSL has a worse false positive problem
although it has a more sophisticated autocorrelation model.

**************************************************************
Effect of movement and spatial preprocessing on functional SNR
**************************************************************

June 15th, 2015

A presentation by Anwar Nunez-Elizalde on some analyses of signal to noise with
and without spatial processing such as motion correction.

Anwar also talked about the large reduction in subject motion from the custom
"headcase" head restraint the Gallant lab are using.

(No meeting on June 22nd)

*******************************************
Journal club on detection of motion in FMRI
*******************************************

June 29th, 2015

We looked at:

Erik B. Beall, Mark J. Lowe, SimPACE: Generating simulated motion
corrupted BOLD data with synthetic-navigated acquisition for the
development and evaluation of SLOMOCO: A new, highly effective
slicewise motion correction, NeuroImage, Volume 101, 1 November 2014,
Pages 21-34, ISSN 1053-8119,
http://dx.doi.org/10.1016/j.neuroimage.2014.06.038.
(http://www.sciencedirect.com/science/article/pii/S1053811914005151)

We concentrated on the question of how well standard volumetric means of
identifying motion-corrupted fMRI data volumes perform.

*******************************
Journal club on reproducibility
*******************************

July 6th, 2015

This was a discussion of what we mean by reproducibility in neuroimaging.
W went through the arguments in Killeen et al. and discussed if the Killeen
"p-rep" proposal is a good one -or not- for neuroimaging studies.

Killeen, Peter R. "An alternative to null-hypothesis significance tests."
Psychological science 16.5 (2005): 345-353.

******************************
Discussion of model validation
******************************

July 13th, 2015

We discussed the papers below.  The intention was to have some time to think of
the problem more generally in terms of prediction and beyond activation models
- for instance for the ICA model.

Loh, Ji Meng, Martin A. Lindquist, and Tor D. Wager. "Residual analysis for
detecting mis-modeling in fMRI." Statistica Sinica 18.4 (2008): 1421.
http://www.stat.columbia.edu/~martin/Papers/SS_resid.pdf

Luo, Wen-Lin, and Thomas E. Nichols. "Diagnosis and exploration of massively
univariate neuroimaging models." NeuroImage 19.3 (2003): 1014-1032.
http://www.fil.ion.ucl.ac.uk/spm/doc/papers/LuoNichols.pdf

In the discussion, JB also mentioned:

Jernigan, Terry L., et al. "More “mapping” in brain mapping: statistical
comparison of effects." Human brain mapping 19.2 (2003): 90-95.

*************************************************
Using components of CSF signal for denoising FMRI
*************************************************

July 20, 2015

We discussed regressing out white matter and CSF components for denoising. The
question is: how do we choose the number of components?

We discussed that as a model selection question.

***************************************************
Journal club on denoising regression models in FMRI
***************************************************

July 27th, 2015

We discussed:

Kay, Kendrick N., et al. "GLMdenoise: a fast, automated technique for denoising
task-based fMRI data." Frontiers in neuroscience 7 (2013).
http://journal.frontiersin.org/article/10.3389/fnins.2013.00247/abstract

********************
OpenFMRI data format
********************

August 10, 2015

JB presented a proposal for the new OpenFMRI data format (called "Brain Imaging
Data Structure") developed by the OpenFMRI folks at Stanford and INCF
neuroimaging group. It is meant to be a standard that will ease sharing of FMRI
/ other brain imaging data and be easy to implement.

******************************************************
Journal club on reliability in functional connectivity
******************************************************

August 31st, 2015

Dan Lurie led a discussion of:

Mueller, Sophia, et al. "Reliability correction for functional connectivity:
Theory and implementation." Human Brain Mapping (2015).
http://onlinelibrary.wiley.com/doi/10.1002/hbm.22947/full

(September 7th, Labor day, no meeting)

***********************************************
Journal club in characterizing motion artefacts
***********************************************

September 14th, 2015

We discussed:

Power, Jonathan D., et al. "Methods to detect, characterize, and remove motion
artifact in resting state fMRI." Neuroimage 84 (2014): 320-341.
http://www.sciencedirect.com/science/article/pii/S1053811913009117

To start, Matthew ran some nipy diagnostics on a Berkeley FMRI dataset, to show
that the top 20 PCA components appear to have signal related to movement,
before and after standard SPM motion correction.

Then we looked at Power et al's nice 2D plots of FMRI runs, showing large
changes across many voxels that appear to be due to movement.  Standard
regression models using motion parameters and CSF / WM signal don't do a good
job of removing these, but regressing global signal and difference in global
signal does appear to work well in reducing the effect.

*********************************
Discussion of ROI voxel selection
*********************************

September 21st, 2015

Anna walked us through a problem selecting activated voxels, using MATLAB.

Among the things we discussed was whether to select voxels on their effect size
(top half of t-statistic), or effect size relative to variance (t-statistic).

******************************************
Removing noise with constrained regression
******************************************

September 28th, 2015

MB started by showing some systematic noise plots on example data, as we saw in
the Power et al 2013 paper a few weeks back.

Then we looked at whether it's possible to use constrained regression to look
for, and regress out, scans where there exists large amounts of noise variance
shared across voxels.  There is the (edited) notebook, rendered nicely:

http://nbviewer.ipython.org/url/practical-neuroimaging.github.io/analysis-clinic/_downloads/powers_plots.ipynb

You can also :download:`download the notebook <powers_plots.ipynb>`.

We were also looking at the `scikit-learn LASSO description
<http://scikit-learn.org/stable/modules/linear_model.html#lasso>`_.

Dan L pointed us to this reference:

Satterthwaite, Theodore D., et al. "An improved framework for confound regression and filtering for control of motion artifact in the preprocessing of resting-state functional connectivity data." Neuroimage 64 (2013): 240-256.

http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3811142/

********************************************
Discussion of brainspell activation database
********************************************

October 5th, 2015

We discussed the brainspell database and web application.

The code for brainspell is at: https://github.com/r03ert0/brainspell

The website is at: http://brainspell.org - but you may need to view it using
Firefox to avoid startup errors.

********************
Introduction to nipy
********************

June 21st, 2016

See: :doc:`nipy_intro`.

.. include:: links_names.inc
