#########################
Notes on Klein et al 2009
#########################

Klein, Arno, et al. "Evaluation of 14 nonlinear deformation algorithms applied
to human brain MRI registration." Neuroimage 46.3 (2009): 786-802.

*****
Input
*****

* LPBA40: 40 subjects, pre-registered to MNI
* IBSR18: 18 subjects
* CUMC12: 12 subjects
* MGH10: 10 subjects

*********
Procedure
*********

* (Not LPBA40) linear registration to MNI using FLIRT -> $I_s$;
* Linear registration to every other image in atlas group -> $I_t$;
* Nonlinear registration of $I_t$ to same image.

*****************
Permutation tests
*****************

* Identify independent brain pairs (20, 9, 6, and 5 pairs for the four
  atlases);
* Take some sample $P$ from these pairs.  For each sample;
    * Get $P$ overlap values for each of two methods $P_1$, P_2$;
    * Subtract to get $D$;
    * Then for some $N$:
        * Permute labels on some entries of $P_1, P_2$;
        * Calculate $D_i$;
    * Collect $D_i$, and compare $D$ to distribution $D_i$ to give $p$;
* Calculate percentage of $p$ > 0.05.
