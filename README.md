# practical-neuroimaging.github.com/analysis-clinic

Web pages for Berkeley imaging analysis clinics.

The website is built using Sphinx.

The built web-pages go in the `gh-pages` branch of this repo.

The Sphinx source for the website goes in the `master` branch.

Working on the site goes like:

``
git co master
# Edit the files
make html # Check what the pages look like
make gh-pages # Push back to the gh-pages branch
# Now on 'gh-pages' branch
git commit
git push # Push up web pages
git co master # Back to editing if you want
``

## Adding references

Add reference to `course.bib`.  Use bibtex citation key, as in `[donoho2010invitation]_`

Run `bib4txt.py` on file with references::

    bib4txt.py -i day0.rst course.bib

Put output at end of `rst` file to define references.
