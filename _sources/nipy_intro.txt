####################
Introduction to nipy
####################

We first had a look at the range of nipy projects at http://nipy.org.

As part of `nipy history
<http://nipy.bic.berkeley.edu/nightly/nipy/doc/history.html>`_, I (MB) mentioned
`Keith Worsley
<https://news.uchicago.edu/article/2009/03/09/keith-worsley-statistical-analyst-brain-images-1951-2009>`_
and `Jonathan Taylor <http://statweb.stanford.edu/~jtaylo>`_.  Nipy largely
started life as BrainStat which was Jonathan's Python port of Keith's
`fmristat <http://www.math.mcgill.ca/keith/fmristat_paper/fmristat.pdf>`_
package, written in MATLAB.

I mentioned the use of `virtualenv <https://virtualenv.pypa.io/en/stable/>`_ to make isolated Python environments for installing new packages, and showed the install command for the libraries in the notebooks::

    pip install numpy scipy matplotlib ipython[notebook] # general libraries
    pip install nibabel nipy dipy  # imaging libraries

We started off looking at the NIPY diagnostics:

* `nipy diagnostics
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/nipy_diagnostics.ipynb>`_.

These are based on the earlier `tsdiffana
<http://imaging.mrc-cbu.cam.ac.uk/imaging/DataDiagnostics>`_ code, written in
MATLAB.

Next we talked about NIPY image slicing:

* `nipy image slicing
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/nipy_image_slicing.ipynb>`_.

This brought us to a discussion of the `image affine
<http://nipy.org/nibabel/coordinate_systems.html>`_.

Then we did a brief run through of:

* `combined slice timing and realignment
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/nipy_space_time.ipynb>`_;
* `nipy image registration
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/nipy_registration.ipynb>`_;
* `dipy image registration
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/dipy_registration.ipynb>`_
  using algorithms patterned after the ANTS toolbox;
* `nipy statistical modeling
  <https://github.com/practical-neuroimaging/analysis-clinic/blob/master/nipy_basic_statistics.ipynb>`_
  including AR(1) modeling.
