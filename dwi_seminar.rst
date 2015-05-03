############################
Seminar in diffusion imaging
############################

Monday 4th, 10am-12 in the brain imaging center (BIC).

The BIC needs keycard access - but we will let you in if you don't have access,
please wait at the elevator going down the BIC at 10 for us to come and get you
- see: http://practical-neuroimaging.github.io/where_and_when.html#where

*********************
Software installation
*********************

You will need some software installed on your laptop to follow along.

Mac or Windows
==============

If you are on Mac or Windows, and you do not have the standard scientific Python
packages installed, then we recommend Anaconda to install the packages you need:

http://continuum.io/downloads

Then you can install the diffusion imaging package (dipy) with::

    pip install dipy

Linux
=====

If you are on Linux - you can install the packages you need with something
like::

    sudo apt-get install python-scipy python-matplotlib python-vtk ipython-notebook python-pip

on Ubuntu or Debian, followed by::

    pip install -U ipython[notebook]
    pip install dipy
