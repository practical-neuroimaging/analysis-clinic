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

.. include:: links_names.inc
