Project{
	name = "opencv",
	type = "module",
	path = Path{modulesfolder, "opencv"},
	
	cflags = table.combine({
		--"-D__STDC_LIMIT_MACROS",
		},
		platform.cflags
	),	
	
	ldflags = table.combine(
		platform.so_ldflags,
		platform.ldflags
	),
	

	include_search_paths = table.combine({
			Path{reporoot, "dev/include"},
			Path{"", relative = true},
			Path{"src", relative = true},
			Path{"src/cv", relative = true},
			Path{"src/cvaux", relative = true},
			Path{"src/cxcore", relative = true},
			Path{"src/ml", relative = true},
			Path{"include", relative = true},
			Path{"include/opencv", relative = true},
			Path{"external/include", relative = true},
		}, 

		({
			OSX = {},
			LINUX = {
				Path{"/usr/include/lua5.1"},
				Path{reporoot, "dev/include"},
			},
			WIN32 = {},
		})[OS],

		platform.include_search_paths
	),
	
	linker_search_paths = {},
	
	dependencies = table.combine(
		{},
		({
			LINUX = {
				Dependency{
					name = "lua5.1",
					path = "/usr/lib",
					type = "shared",
				},

				Dependency{
					name = "z",
					path = "/usr/lib",
					type = "shared",
				},
			}
		})[OS]
	),

	src = {
		Path{"src/lua_opencv.cpp", relative = true},
		Path{"src/cv/cvcorner.cpp", relative = true},
		Path{"src/cv/cvlinefit.cpp", relative = true},
		Path{"src/cv/cvoptflowhs.cpp", relative = true},
		Path{"src/cv/cvstardetector.cpp", relative = true},
		Path{"src/cv/cvaccum.cpp", relative = true},
		Path{"src/cv/cvcornersubpix.cpp", relative = true},
		Path{"src/cv/cvgrabcut.cpp", relative = true},
		Path{"src/cv/cvoptflowlk.cpp", relative = true},
		Path{"src/cv/cvstereobm.cpp", relative = true},
		Path{"src/cv/cvapprox.cpp", relative = true},
		Path{"src/cv/cvderiv.cpp", relative = true},
		Path{"src/cv/cvlkpyramid.cpp", relative = true},
		Path{"src/cv/cvstereogc.cpp", relative = true},
		Path{"src/cv/cvcalibinit.cpp", relative = true},
		Path{"src/cv/cvdistransform.cpp", relative = true},
		Path{"src/cv/cvhaar.cpp", relative = true},
		Path{"src/cv/cvlsh.cpp", relative = true},
		Path{"src/cv/cvprecomp.cpp", relative = true},
		Path{"src/cv/cvstereosgbm.cpp", relative = true},
		Path{"src/cv/cvcalibration.cpp", relative = true},
		Path{"src/cv/cvemd.cpp", relative = true},
		Path{"src/cv/cvhistogram.cpp", relative = true},
		Path{"src/cv/cvmatchcontours.cpp", relative = true},
		Path{"src/cv/cvpyramids.cpp", relative = true},
		Path{"src/cv/cvsubdivision2d.cpp", relative = true},
		Path{"src/cv/cvcamshift.cpp", relative = true},
		Path{"src/cv/cvfeatureselect.cpp", relative = true},
		Path{"src/cv/cvhough.cpp", relative = true},
		Path{"src/cv/cvmodelest.cpp", relative = true},
		Path{"src/cv/cvpyrsegmentation.cpp", relative = true},
		Path{"src/cv/cvsumpixels.cpp", relative = true},
		Path{"src/cv/cvcanny.cpp", relative = true},
		Path{"src/cv/cvfeaturetree.cpp", relative = true},
		Path{"src/cv/cvrotcalipers.cpp", relative = true},
		Path{"src/cv/cvsurf.cpp", relative = true},
		Path{"src/cv/cvcascadedetect.cpp", relative = true},
		Path{"src/cv/cvimgwarp.cpp", relative = true},
		Path{"src/cv/cvmoments.cpp", relative = true},
		Path{"src/cv/cvsamplers.cpp", relative = true},
		Path{"src/cv/cvtables.cpp", relative = true},
		Path{"src/cv/cvcheckchessboard.cpp", relative = true},
		Path{"src/cv/cvfilter.cpp", relative = true},
		Path{"src/cv/cvinpaint.cpp", relative = true},
		Path{"src/cv/cvmorph.cpp", relative = true},
		Path{"src/cv/cvsegmentation.cpp", relative = true},
		Path{"src/cv/cvtemplmatch.cpp", relative = true},
		Path{"src/cv/cvcolor.cpp", relative = true},
		Path{"src/cv/cvfloodfill.cpp", relative = true},
		Path{"src/cv/cvmotempl.cpp", relative = true},
		Path{"src/cv/cvshapedescr.cpp", relative = true},
		Path{"src/cv/cvthresh.cpp", relative = true},
		Path{"src/cv/cvcontours.cpp", relative = true},
		Path{"src/cv/cvfundam.cpp", relative = true},
		Path{"src/cv/cvkalman.cpp", relative = true},
		Path{"src/cv/cvmser.cpp", relative = true},
		Path{"src/cv/cvsmooth.cpp", relative = true},
		Path{"src/cv/cvtriangulate.cpp", relative = true},
		Path{"src/cv/cvkdtree.cpp", relative = true},
		Path{"src/cv/cvoptflowbm.cpp", relative = true},
		Path{"src/cv/cvsnakes.cpp", relative = true},
		Path{"src/cv/cvundistort.cpp", relative = true},
		Path{"src/cv/cvconvhull.cpp", relative = true},
		Path{"src/cv/cvgeometry.cpp", relative = true},
		Path{"src/cv/cvoptflowgf.cpp", relative = true},
		Path{"src/cv/cvspilltree.cpp", relative = true},
		Path{"src/cv/cvutils.cpp", relative = true},

		Path{"src/cvaux/camshift.cpp", relative = true},
		Path{"src/cvaux/cvcalonder.cpp", relative = true},
		Path{"src/cvaux/cvfacetemplate.cpp", relative = true},
		Path{"src/cvaux/cvlevmartrif.cpp", relative = true},
		Path{"src/cvaux/cvselfsimilarity.cpp", relative = true},
		Path{"src/cvaux/cvclique.cpp", relative = true},
		Path{"src/cvaux/cvlines.cpp", relative = true},
		Path{"src/cvaux/cvspinimages.cpp", relative = true},
		Path{"src/cvaux/cv3dtracker.cpp", relative = true},
		Path{"src/cvaux/cvcondens.cpp", relative = true},
		Path{"src/cvaux/cvfast.cpp", relative = true},
		Path{"src/cvaux/cvlmeds.cpp", relative = true},
		Path{"src/cvaux/cvsubdiv2.cpp", relative = true},
		Path{"src/cvaux/cvadaptiveskindetector.cpp", relative = true},
		Path{"src/cvaux/cvcorrespond.cpp", relative = true},
		Path{"src/cvaux/cvfindface.cpp", relative = true},
		Path{"src/cvaux/cvmat.cpp", relative = true},
		Path{"src/cvaux/cvtexture.cpp", relative = true},
		Path{"src/cvaux/cvaux.cpp", relative = true},
		Path{"src/cvaux/cvcorrimages.cpp", relative = true},
		Path{"src/cvaux/cvfindhandregion.cpp", relative = true},
		Path{"src/cvaux/cvtrifocal.cpp", relative = true},
		Path{"src/cvaux/cvcreatehandmask.cpp", relative = true},
		Path{"src/cvaux/cvfuzzymeanshifttracker.cpp", relative = true},
		Path{"src/cvaux/cvmorphcontours.cpp", relative = true},
		Path{"src/cvaux/cvvecfacetracking.cpp", relative = true},
		Path{"src/cvaux/cvauxprecomp.cpp", relative = true},
		Path{"src/cvaux/cvdominants.cpp", relative = true},
		Path{"src/cvaux/cvhmm1d.cpp", relative = true},
		Path{"src/cvaux/cvmorphing.cpp", relative = true},
		Path{"src/cvaux/cvauxutils.cpp", relative = true},
		Path{"src/cvaux/cvdpstereo.cpp", relative = true},
		Path{"src/cvaux/cvhmm.cpp", relative = true},
		Path{"src/cvaux/cvoctree.cpp", relative = true},
		Path{"src/cvaux/cvvideo.cpp", relative = true},
		Path{"src/cvaux/cvba.cpp", relative = true},
		Path{"src/cvaux/cveigenobjects.cpp", relative = true},
		Path{"src/cvaux/cvhmmobs.cpp", relative = true},
		Path{"src/cvaux/cvoneway.cpp", relative = true},
		Path{"src/cvaux/cvbgfg_acmmm2003.cpp", relative = true},
		Path{"src/cvaux/cvepilines.cpp", relative = true},
		Path{"src/cvaux/cvhog.cpp", relative = true},
		Path{"src/cvaux/cvpgh.cpp", relative = true},
		Path{"src/cvaux/decomppoly.cpp", relative = true},
		Path{"src/cvaux/cvbgfg_codebook.cpp", relative = true},
		Path{"src/cvaux/cvface.cpp", relative = true},
		Path{"src/cvaux/cvimage.cpp", relative = true},
		Path{"src/cvaux/cvplanardetect.cpp", relative = true},
		Path{"src/cvaux/enmin.cpp", relative = true},
		Path{"src/cvaux/cvbgfg_common.cpp", relative = true},
		Path{"src/cvaux/cvfacedetection.cpp", relative = true},
		Path{"src/cvaux/cvlcm.cpp", relative = true},
		Path{"src/cvaux/cvprewarp.cpp", relative = true},
		Path{"src/cvaux/extendededges.cpp", relative = true},
		Path{"src/cvaux/cvbgfg_gaussmix.cpp", relative = true},
		Path{"src/cvaux/cvlee.cpp", relative = true},
		Path{"src/cvaux/cvquadsubpix.cpp", relative = true},
		Path{"src/cvaux/cvcalcimagehomography.cpp", relative = true},
		Path{"src/cvaux/cvlevmar.cpp", relative = true},
		Path{"src/cvaux/cvscanlines.cpp", relative = true},
		Path{"src/cvaux/cvcalibfilter.cpp", relative = true},
		Path{"src/cvaux/cvlevmarprojbandle.cpp", relative = true},
		Path{"src/cvaux/cvsegment.cpp", relative = true},
	
		Path{"src/cvaux/vs/bgfg_estimation.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackgen1.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingkalman.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackpostproclinear.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackanalysis.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackgenyml.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackinglist.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackpostproclist.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackanalysishist.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingauto.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingmsfg.cpp", relative = true},
		Path{"src/cvaux/vs/enteringblobdetection.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackanalysisior.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingcc.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingmsfgs.cpp", relative = true},
		Path{"src/cvaux/vs/enteringblobdetectionreal.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackanalysistrackdist.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackingccwithcr.cpp", relative = true},
		Path{"src/cvaux/vs/blobtrackpostprockalman.cpp", relative = true},
		Path{"src/cvaux/vs/testseq.cpp", relative = true},

		Path{"src/cxcore/cxarray.cpp", relative = true},
		Path{"src/cxcore/cxdxt.cpp", relative = true},
		Path{"src/cxcore/cxmathfuncs.cpp", relative = true},
		Path{"src/cxcore/cxpersistence.cpp", relative = true},
		Path{"src/cxcore/cxstat.cpp", relative = true},
		Path{"src/cxcore/cxalloc.cpp", relative = true},
		Path{"src/cxcore/cxconvert.cpp", relative = true},
		Path{"src/cxcore/cxdatastructs.cpp", relative = true},
		--Path{"src/cxcore/cxflann.cpp", relative = true},
		Path{"src/cxcore/cxmatmul.cpp", relative = true},
		Path{"src/cxcore/cxprecomp.cpp", relative = true},
		Path{"src/cxcore/cxsystem.cpp", relative = true},
		Path{"src/cxcore/cxarithm.cpp", relative = true},
		Path{"src/cxcore/cxcopy.cpp", relative = true},
		Path{"src/cxcore/cxdrawing.cpp", relative = true},
		Path{"src/cxcore/cxlapack.cpp", relative = true},
		Path{"src/cxcore/cxmatrix.cpp", relative = true},
		Path{"src/cxcore/cxrand.cpp", relative = true},
		Path{"src/cxcore/cxtables.cpp", relative = true},

		Path{"src/ml/mlcnn.cpp", relative = true},
		Path{"src/ml/mlem.cpp", relative = true},
		Path{"src/ml/mlnbayes.cpp", relative = true},
		Path{"src/ml/mltestset.cpp", relative = true},
		Path{"src/ml/mlann_mlp.cpp", relative = true},
		Path{"src/ml/ml.cpp", relative = true},
		Path{"src/ml/mlertrees.cpp", relative = true},
		Path{"src/ml/ml_inner_functions.cpp", relative = true},
		Path{"src/ml/mlrtrees.cpp", relative = true},
		Path{"src/ml/mltree.cpp", relative = true},
		Path{"src/ml/mlboost.cpp", relative = true},
		Path{"src/ml/mldata.cpp", relative = true},
		Path{"src/ml/mlestimate.cpp", relative = true},
		Path{"src/ml/mlknearest.cpp", relative = true},
		Path{"src/ml/mlsvm.cpp", relative = true},


		Path{"external/lapack/dlabrd.c", relative = true},
		Path{"external/lapack/dlanst.c", relative = true},
		Path{"external/lapack/dlasd3.c", relative = true},
		Path{"external/lapack/dlazq4.c", relative = true},
		Path{"external/lapack/dswap.c", relative = true},
		Path{"external/lapack/pow_ii.c", relative = true},
		Path{"external/lapack/sgetrf.c", relative = true},
		Path{"external/lapack/slamch.c", relative = true},
		Path{"external/lapack/slascl.c", relative = true},
		Path{"external/lapack/slauu2.c", relative = true},
		Path{"external/lapack/sstemr.c", relative = true},
		Path{"external/lapack/dlacpy.c", relative = true},
		Path{"external/lapack/dlansy.c", relative = true},
		Path{"external/lapack/dlasd4.c", relative = true},
		Path{"external/lapack/dnrm2.c", relative = true},
		Path{"external/lapack/dsyevr.c", relative = true},
		Path{"external/lapack/pow_ri.c", relative = true},
		Path{"external/lapack/sgetri.c", relative = true},
		Path{"external/lapack/slamrg.c", relative = true},
		Path{"external/lapack/slasd0.c", relative = true},
		Path{"external/lapack/slauum.c", relative = true},
		Path{"external/lapack/ssteqr.c", relative = true},
		Path{"external/lapack/dasum.c", relative = true},
		Path{"external/lapack/dlae2.c", relative = true},
		Path{"external/lapack/dlapy2.c", relative = true},
		Path{"external/lapack/dlasd5.c", relative = true},
		Path{"external/lapack/dorg2r.c", relative = true},
		Path{"external/lapack/dsymv.c", relative = true},
		Path{"external/lapack/precomp.c", relative = true},
		Path{"external/lapack/sgetrs.c", relative = true},
		Path{"external/lapack/slaneg.c", relative = true},
		Path{"external/lapack/slasd1.c", relative = true},
		Path{"external/lapack/slazq3.c", relative = true},
		Path{"external/lapack/ssterf.c", relative = true},
		Path{"external/lapack/daxpy.c", relative = true},
		Path{"external/lapack/dlaebz.c", relative = true},
		Path{"external/lapack/dlar1v.c", relative = true},
		Path{"external/lapack/dlasd6.c", relative = true},
		Path{"external/lapack/dorgbr.c", relative = true},
		Path{"external/lapack/dsyr2.c", relative = true},
		Path{"external/lapack/sasum.c", relative = true},
		Path{"external/lapack/slabad.c", relative = true},
		Path{"external/lapack/slange.c", relative = true},
		Path{"external/lapack/slasd2.c", relative = true},
		Path{"external/lapack/slazq4.c", relative = true},
		Path{"external/lapack/sswap.c", relative = true},
		Path{"external/lapack/dbdsdc.c", relative = true},
		Path{"external/lapack/dlaed0.c", relative = true},
		Path{"external/lapack/dlarfb.c", relative = true},
		Path{"external/lapack/dlasd7.c", relative = true},
		Path{"external/lapack/dorgl2.c", relative = true},
		Path{"external/lapack/dsyr2k.c", relative = true},
		Path{"external/lapack/saxpy.c", relative = true},
		Path{"external/lapack/slabrd.c", relative = true},
		Path{"external/lapack/slanst.c", relative = true},
		Path{"external/lapack/slasd3.c", relative = true},
		Path{"external/lapack/snrm2.c", relative = true},
		Path{"external/lapack/ssyevr.c", relative = true},
		Path{"external/lapack/dbdsqr.c", relative = true},
		Path{"external/lapack/dlaed1.c", relative = true},
		Path{"external/lapack/dlarf.c", relative = true},
		Path{"external/lapack/dlasd8.c", relative = true},
		Path{"external/lapack/dorglq.c", relative = true},
		Path{"external/lapack/dsyr.c", relative = true},
		Path{"external/lapack/sbdsdc.c", relative = true},
		Path{"external/lapack/slacpy.c", relative = true},
		Path{"external/lapack/slansy.c", relative = true},
		Path{"external/lapack/slasd4.c", relative = true},
		Path{"external/lapack/sorg2r.c", relative = true},
		Path{"external/lapack/ssymv.c", relative = true},
		Path{"external/lapack/dcopy.c", relative = true},
		Path{"external/lapack/dlaed2.c", relative = true},
		Path{"external/lapack/dlarfg.c", relative = true},
		Path{"external/lapack/dlasda.c", relative = true},
		Path{"external/lapack/dorgqr.c", relative = true},
		Path{"external/lapack/dsyrk.c", relative = true},
		Path{"external/lapack/sbdsqr.c", relative = true},
		Path{"external/lapack/slae2.c", relative = true},
		Path{"external/lapack/slapy2.c", relative = true},
		Path{"external/lapack/slasd5.c", relative = true},
		Path{"external/lapack/sorgbr.c", relative = true},
		Path{"external/lapack/ssyr2.c", relative = true},
		Path{"external/lapack/ddot.c", relative = true},
		Path{"external/lapack/dlaed3.c", relative = true},
		Path{"external/lapack/dlarft.c", relative = true},
		Path{"external/lapack/dlasdq.c", relative = true},
		Path{"external/lapack/dorm2l.c", relative = true},
		Path{"external/lapack/dsytd2.c", relative = true},
		Path{"external/lapack/s_cat.c", relative = true},
		Path{"external/lapack/slaebz.c", relative = true},
		Path{"external/lapack/slar1v.c", relative = true},
		Path{"external/lapack/slasd6.c", relative = true},
		Path{"external/lapack/sorgl2.c", relative = true},
		Path{"external/lapack/ssyr2k.c", relative = true},
		Path{"external/lapack/dgebd2.c", relative = true},
		Path{"external/lapack/dlaed4.c", relative = true},
		Path{"external/lapack/dlarnv.c", relative = true},
		Path{"external/lapack/dlasdt.c", relative = true},
		Path{"external/lapack/dorm2r.c", relative = true},
		Path{"external/lapack/dsytf2.c", relative = true},
		Path{"external/lapack/s_cmp.c", relative = true},
		Path{"external/lapack/slaed0.c", relative = true},
		Path{"external/lapack/slarfb.c", relative = true},
		Path{"external/lapack/slasd7.c", relative = true},
		Path{"external/lapack/sorglq.c", relative = true},
		Path{"external/lapack/ssyrk.c", relative = true},
		Path{"external/lapack/dgebrd.c", relative = true},
		Path{"external/lapack/dlaed5.c", relative = true},
		Path{"external/lapack/dlarra.c", relative = true},
		Path{"external/lapack/dlaset.c", relative = true},
		Path{"external/lapack/dormbr.c", relative = true},
		Path{"external/lapack/dsytrd.c", relative = true},
		Path{"external/lapack/s_copy.c", relative = true},
		Path{"external/lapack/slaed1.c", relative = true},
		Path{"external/lapack/slarf.c", relative = true},
		Path{"external/lapack/slasd8.c", relative = true},
		Path{"external/lapack/sorgqr.c", relative = true},
		Path{"external/lapack/ssytd2.c", relative = true},
		Path{"external/lapack/dgelq2.c", relative = true},
		Path{"external/lapack/dlaed6.c", relative = true},
		Path{"external/lapack/dlarrb.c", relative = true},
		Path{"external/lapack/dlasq1.c", relative = true},
		Path{"external/lapack/dorml2.c", relative = true},
		Path{"external/lapack/dsytrf.c", relative = true},
		Path{"external/lapack/scopy.c", relative = true},
		Path{"external/lapack/slaed2.c", relative = true},
		Path{"external/lapack/slarfg.c", relative = true},
		Path{"external/lapack/slasda.c", relative = true},
		Path{"external/lapack/sorm2l.c", relative = true},
		Path{"external/lapack/ssytrd.c", relative = true},
		Path{"external/lapack/dgelqf.c", relative = true},
		Path{"external/lapack/dlaed7.c", relative = true},
		Path{"external/lapack/dlarrc.c", relative = true},
		Path{"external/lapack/dlasq2.c", relative = true},
		Path{"external/lapack/dormlq.c", relative = true},
		Path{"external/lapack/dsytri.c", relative = true},
		Path{"external/lapack/sdot.c", relative = true},
		Path{"external/lapack/slaed3.c", relative = true},
		Path{"external/lapack/slarft.c", relative = true},
		Path{"external/lapack/slasdq.c", relative = true},
		Path{"external/lapack/sorm2r.c", relative = true},
		Path{"external/lapack/strmm.c", relative = true},
		Path{"external/lapack/dgels.c", relative = true},
		Path{"external/lapack/dlaed8.c", relative = true},
		Path{"external/lapack/dlarrd.c", relative = true},
		Path{"external/lapack/dlasq3.c", relative = true},
		Path{"external/lapack/dormql.c", relative = true},
		Path{"external/lapack/dsytrs.c", relative = true},
		Path{"external/lapack/sgebd2.c", relative = true},
		Path{"external/lapack/slaed4.c", relative = true},
		Path{"external/lapack/slarnv.c", relative = true},
		Path{"external/lapack/slasdt.c", relative = true},
		Path{"external/lapack/sormbr.c", relative = true},
		Path{"external/lapack/strmv.c", relative = true},
		Path{"external/lapack/dgelsd.c", relative = true},
		Path{"external/lapack/dlaed9.c", relative = true},
		Path{"external/lapack/dlarre.c", relative = true},
		Path{"external/lapack/dlasq4.c", relative = true},
		Path{"external/lapack/dormqr.c", relative = true},
		Path{"external/lapack/dtrmm.c", relative = true},
		Path{"external/lapack/sgebrd.c", relative = true},
		Path{"external/lapack/slaed5.c", relative = true},
		Path{"external/lapack/slarra.c", relative = true},
		Path{"external/lapack/slaset.c", relative = true},
		Path{"external/lapack/sorml2.c", relative = true},
		Path{"external/lapack/strsm.c", relative = true},
		Path{"external/lapack/dgemm.c", relative = true},
		Path{"external/lapack/dlaeda.c", relative = true},
		Path{"external/lapack/dlarrf.c", relative = true},
		Path{"external/lapack/dlasq5.c", relative = true},
		Path{"external/lapack/dormtr.c", relative = true},
		Path{"external/lapack/dtrmv.c", relative = true},
		Path{"external/lapack/sgelq2.c", relative = true},
		Path{"external/lapack/slaed6.c", relative = true},
		Path{"external/lapack/slarrb.c", relative = true},
		Path{"external/lapack/slasq1.c", relative = true},
		Path{"external/lapack/sormlq.c", relative = true},
		Path{"external/lapack/strti2.c", relative = true},
		Path{"external/lapack/dgemv.c", relative = true},
		Path{"external/lapack/dlaev2.c", relative = true},
		Path{"external/lapack/dlarrj.c", relative = true},
		Path{"external/lapack/dlasq6.c", relative = true},
		Path{"external/lapack/dpotf2.c", relative = true},
		Path{"external/lapack/dtrsm.c", relative = true},
		Path{"external/lapack/sgelqf.c", relative = true},
		Path{"external/lapack/slaed7.c", relative = true},
		Path{"external/lapack/slarrc.c", relative = true},
		Path{"external/lapack/slasq2.c", relative = true},
		Path{"external/lapack/sormql.c", relative = true},
		Path{"external/lapack/strtri.c", relative = true},
		Path{"external/lapack/dgeqr2.c", relative = true},
		Path{"external/lapack/dlagtf.c", relative = true},
		Path{"external/lapack/dlarrk.c", relative = true},
		Path{"external/lapack/dlasr.c", relative = true},
		Path{"external/lapack/dpotrf.c", relative = true},
		Path{"external/lapack/dtrti2.c", relative = true},
		Path{"external/lapack/sgels.c", relative = true},
		Path{"external/lapack/slaed8.c", relative = true},
		Path{"external/lapack/slarrd.c", relative = true},
		Path{"external/lapack/slasq3.c", relative = true},
		Path{"external/lapack/sormqr.c", relative = true},
		Path{"external/lapack/strtrs.c", relative = true},
		Path{"external/lapack/dgeqrf.c", relative = true},
		Path{"external/lapack/dlagts.c", relative = true},
		Path{"external/lapack/dlarrr.c", relative = true},
		Path{"external/lapack/dlasrt.c", relative = true},
		Path{"external/lapack/dpotri.c", relative = true},
		Path{"external/lapack/dtrtri.c", relative = true},
		Path{"external/lapack/sgelsd.c", relative = true},
		Path{"external/lapack/slaed9.c", relative = true},
		Path{"external/lapack/slarre.c", relative = true},
		Path{"external/lapack/slasq4.c", relative = true},
		Path{"external/lapack/sormtr.c", relative = true},
		Path{"external/lapack/xerbla.c", relative = true},
		Path{"external/lapack/dger.c", relative = true},
		Path{"external/lapack/dlaisnan.c", relative = true},
		Path{"external/lapack/dlarrv.c", relative = true},
		Path{"external/lapack/dlassq.c", relative = true},
		Path{"external/lapack/dpotrs.c", relative = true},
		Path{"external/lapack/dtrtrs.c", relative = true},
		Path{"external/lapack/sgemm.c", relative = true},
		Path{"external/lapack/slaeda.c", relative = true},
		Path{"external/lapack/slarrf.c", relative = true},
		Path{"external/lapack/slasq5.c", relative = true},
		Path{"external/lapack/spotf2.c", relative = true},
		Path{"external/lapack/dgesdd.c", relative = true},
		Path{"external/lapack/dlals0.c", relative = true},
		Path{"external/lapack/dlartg.c", relative = true},
		Path{"external/lapack/dlasv2.c", relative = true},
		Path{"external/lapack/drot.c", relative = true},
		Path{"external/lapack/f77_aloc.c", relative = true},
		Path{"external/lapack/sgemv.c", relative = true},
		Path{"external/lapack/slaev2.c", relative = true},
		Path{"external/lapack/slarrj.c", relative = true},
		Path{"external/lapack/slasq6.c", relative = true},
		Path{"external/lapack/spotrf.c", relative = true},
		Path{"external/lapack/dgesv.c", relative = true},
		Path{"external/lapack/dlalsa.c", relative = true},
		Path{"external/lapack/dlaruv.c", relative = true},
		Path{"external/lapack/dlaswp.c", relative = true},
		Path{"external/lapack/dscal.c", relative = true},
		Path{"external/lapack/idamax.c", relative = true},
		Path{"external/lapack/sgeqr2.c", relative = true},
		Path{"external/lapack/slagtf.c", relative = true},
		Path{"external/lapack/slarrk.c", relative = true},
		Path{"external/lapack/slasr.c", relative = true},
		Path{"external/lapack/spotri.c", relative = true},
		Path{"external/lapack/dgetf2.c", relative = true},
		Path{"external/lapack/dlalsd.c", relative = true},
		Path{"external/lapack/dlas2.c", relative = true},
		Path{"external/lapack/dlasyf.c", relative = true},
		Path{"external/lapack/dstebz.c", relative = true},
		Path{"external/lapack/ieeeck.c", relative = true},
		Path{"external/lapack/sgeqrf.c", relative = true},
		Path{"external/lapack/slagts.c", relative = true},
		Path{"external/lapack/slarrr.c", relative = true},
		Path{"external/lapack/slasrt.c", relative = true},
		Path{"external/lapack/spotrs.c", relative = true},
		Path{"external/lapack/dgetrf.c", relative = true},
		Path{"external/lapack/dlamch.c", relative = true},
		Path{"external/lapack/dlascl.c", relative = true},
		Path{"external/lapack/dlatrd.c", relative = true},
		Path{"external/lapack/dstein.c", relative = true},
		Path{"external/lapack/ilaenv.c", relative = true},
		Path{"external/lapack/sger.c", relative = true},
		Path{"external/lapack/slaisnan.c", relative = true},
		Path{"external/lapack/slarrv.c", relative = true},
		Path{"external/lapack/slassq.c", relative = true},
		Path{"external/lapack/srot.c", relative = true},
		Path{"external/lapack/dgetri.c", relative = true},
		Path{"external/lapack/dlamrg.c", relative = true},
		Path{"external/lapack/dlasd0.c", relative = true},
		Path{"external/lapack/dlauu2.c", relative = true},
		Path{"external/lapack/dstemr.c", relative = true},
		Path{"external/lapack/iparmq.c", relative = true},
		Path{"external/lapack/sgesdd.c", relative = true},
		Path{"external/lapack/slals0.c", relative = true},
		Path{"external/lapack/slartg.c", relative = true},
		Path{"external/lapack/slasv2.c", relative = true},
		Path{"external/lapack/sscal.c", relative = true},
		Path{"external/lapack/dgetrs.c", relative = true},
		Path{"external/lapack/dlaneg.c", relative = true},
		Path{"external/lapack/dlasd1.c", relative = true},
		Path{"external/lapack/dlauum.c", relative = true},
		Path{"external/lapack/dsteqr.c", relative = true},
		Path{"external/lapack/isamax.c", relative = true},
		Path{"external/lapack/sgesv.c", relative = true},
		Path{"external/lapack/slalsa.c", relative = true},
		Path{"external/lapack/slaruv.c", relative = true},
		Path{"external/lapack/slaswp.c", relative = true},
		Path{"external/lapack/sstebz.c", relative = true},
		Path{"external/lapack/dlabad.c", relative = true},
		Path{"external/lapack/dlange.c", relative = true},
		Path{"external/lapack/dlasd2.c", relative = true},
		Path{"external/lapack/dlazq3.c", relative = true},
		Path{"external/lapack/dsterf.c", relative = true},
		Path{"external/lapack/pow_di.c", relative = true},
		Path{"external/lapack/sgetf2.c", relative = true},
		Path{"external/lapack/slalsd.c", relative = true},
		Path{"external/lapack/slas2.c", relative = true},
		Path{"external/lapack/slatrd.c", relative = true},
		Path{"external/lapack/sstein.c", relative = true},

	},
	
	on_install = function(self, config)

	end,
	
	Debug = Config{
		cflags = platform.Debug.cflags,
		install_path = Path{reporoot, "sysbuild/Debug/modules"},
	},
	
	Release = Config{
		cflags = platform.Release.cflags,
		install_path = Path{reporoot, "sysbuild/Release/modules"},
	},
}
