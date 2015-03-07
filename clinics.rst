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

Notebook on `power in neuroimaging
<http://nbviewer.ipython.org/github/jbpoline/power_issues/blob/master/NSS_power_issues.ipynb>`_

***********************************
Evaluation of the statistical model
***********************************

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

Feb 2, 2015

Notebook on `correlated regressors
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/correlated_regressors.ipynb>`_

Notebook on `optimizing designs
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/optimizing_designs.ipynb>`_

We will cover optimizing designs properly in the Feb 16th clinic.

*****************************************
Within-subject registration and fieldmaps
*****************************************

Feb 9, 2015

Exploring some DICOMs from the ``gre_field_mapping`` sequence - `notebook on
investigating fieldmaps
<http://nbviewer.ipython.org/github/practical-neuroimaging/analysis-clinic/blob/master/investigating_fieldmaps.ipynb>`_.

Useful links:

* http://nipy.org/nibabel/coordinate_systems.html
* http://www.mccauslandcenter.sc.edu/CRNL/tools/fieldmap
* https://bitbucket.org/matthewbrett/spm-versions/src/master/spm12/toolbox/FieldMap/FieldMap_principles.man

Jezzard P & Balaban RS. 1995. Correction for geometric distortion in
echo planar images from Bo field variations. MRM 34:65-73.

**********************************************
Optimizing designs, orthogonalizing regressors
**********************************************

Feb 16, 2015

Notebook on `optimizing designs
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/optimizing_designs.ipynb>`_

Notebook on `correlated regressors
<http://nbviewer.ipython.org/github/practical-neuroimaging/pna-notebooks/blob/master/correlated_regressors.ipynb>`_

.. include:: links_names.inc
