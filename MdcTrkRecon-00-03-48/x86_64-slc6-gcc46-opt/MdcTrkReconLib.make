#-- start of make_header -----------------

#====================================
#  Library MdcTrkReconLib
#
#   Generated Wed Aug 11 16:20:12 2021  by bes3pub
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_MdcTrkReconLib_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_MdcTrkReconLib_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_MdcTrkReconLib

MdcTrkRecon_tag = $(tag)

#cmt_local_tagfile_MdcTrkReconLib = $(MdcTrkRecon_tag)_MdcTrkReconLib.make
cmt_local_tagfile_MdcTrkReconLib = $(bin)$(MdcTrkRecon_tag)_MdcTrkReconLib.make

else

tags      = $(tag),$(CMTEXTRATAGS)

MdcTrkRecon_tag = $(tag)

#cmt_local_tagfile_MdcTrkReconLib = $(MdcTrkRecon_tag).make
cmt_local_tagfile_MdcTrkReconLib = $(bin)$(MdcTrkRecon_tag).make

endif

include $(cmt_local_tagfile_MdcTrkReconLib)
#-include $(cmt_local_tagfile_MdcTrkReconLib)

ifdef cmt_MdcTrkReconLib_has_target_tag

cmt_final_setup_MdcTrkReconLib = $(bin)setup_MdcTrkReconLib.make
cmt_dependencies_in_MdcTrkReconLib = $(bin)dependencies_MdcTrkReconLib.in
#cmt_final_setup_MdcTrkReconLib = $(bin)MdcTrkRecon_MdcTrkReconLibsetup.make
cmt_local_MdcTrkReconLib_makefile = $(bin)MdcTrkReconLib.make

else

cmt_final_setup_MdcTrkReconLib = $(bin)setup.make
cmt_dependencies_in_MdcTrkReconLib = $(bin)dependencies.in
#cmt_final_setup_MdcTrkReconLib = $(bin)MdcTrkReconsetup.make
cmt_local_MdcTrkReconLib_makefile = $(bin)MdcTrkReconLib.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)MdcTrkReconsetup.make

#MdcTrkReconLib :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'MdcTrkReconLib'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = MdcTrkReconLib/
#MdcTrkReconLib::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

MdcTrkReconLiblibname   = $(bin)$(library_prefix)MdcTrkReconLib$(library_suffix)
MdcTrkReconLiblib       = $(MdcTrkReconLiblibname).a
MdcTrkReconLibstamp     = $(bin)MdcTrkReconLib.stamp
MdcTrkReconLibshstamp   = $(bin)MdcTrkReconLib.shstamp

MdcTrkReconLib :: dirs  MdcTrkReconLibLIB
	$(echo) "MdcTrkReconLib ok"

#-- end of libary_header ----------------

MdcTrkReconLibLIB :: $(MdcTrkReconLiblib) $(MdcTrkReconLibshstamp)
	@/bin/echo "------> MdcTrkReconLib : library ok"

$(MdcTrkReconLiblib) :: $(bin)MdcSeg.o $(bin)GmsList.o $(bin)MdcLine.o $(bin)MdcTrack.o $(bin)mdcTwoInv.o $(bin)MdcHitDict.o $(bin)MdcSegData.o $(bin)MdcSegInfo.o $(bin)MdcSegList.o $(bin)GmsListLink.o $(bin)MdcFlagHold.o $(bin)MdcMakeHits.o $(bin)MdcPlotHits.o $(bin)MdcSegUsage.o $(bin)MdcTrkRecon.o $(bin)MdcMergeDups.o $(bin)MdcSegFinder.o $(bin)MdcSegParams.o $(bin)MdcTrackList.o $(bin)MdcSegGrouper.o $(bin)MdcSegInfoCsmc.o $(bin)MdcSegPatterns.o $(bin)MdcTrackParams.o $(bin)MdcSegGrouperAx.o $(bin)MdcSegGrouperSt.o $(bin)MdcSegInfoSterO.o $(bin)MdcSegInfoAxialO.o $(bin)MdcTrackListBase.o $(bin)MdcTrackListCsmc.o $(bin)MdcSegGrouperCsmc.o
	$(lib_echo) library
	$(lib_silent) cd $(bin); \
	  $(ar) $(MdcTrkReconLiblib) $?
	$(lib_silent) $(ranlib) $(MdcTrkReconLiblib)
	$(lib_silent) cat /dev/null >$(MdcTrkReconLibstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

$(MdcTrkReconLiblibname).$(shlibsuffix) :: $(MdcTrkReconLiblib) $(MdcTrkReconLibstamps)
	$(lib_silent) cd $(bin); QUIET=$(QUIET); $(make_shlib) "$(tags)" MdcTrkReconLib $(MdcTrkReconLib_shlibflags)

$(MdcTrkReconLibshstamp) :: $(MdcTrkReconLiblibname).$(shlibsuffix)
	@if test -f $(MdcTrkReconLiblibname).$(shlibsuffix) ; then cat /dev/null >$(MdcTrkReconLibshstamp) ; fi

MdcTrkReconLibclean ::
	$(cleanup_echo) objects
	$(cleanup_silent) cd $(bin); /bin/rm -f $(bin)MdcSeg.o $(bin)GmsList.o $(bin)MdcLine.o $(bin)MdcTrack.o $(bin)mdcTwoInv.o $(bin)MdcHitDict.o $(bin)MdcSegData.o $(bin)MdcSegInfo.o $(bin)MdcSegList.o $(bin)GmsListLink.o $(bin)MdcFlagHold.o $(bin)MdcMakeHits.o $(bin)MdcPlotHits.o $(bin)MdcSegUsage.o $(bin)MdcTrkRecon.o $(bin)MdcMergeDups.o $(bin)MdcSegFinder.o $(bin)MdcSegParams.o $(bin)MdcTrackList.o $(bin)MdcSegGrouper.o $(bin)MdcSegInfoCsmc.o $(bin)MdcSegPatterns.o $(bin)MdcTrackParams.o $(bin)MdcSegGrouperAx.o $(bin)MdcSegGrouperSt.o $(bin)MdcSegInfoSterO.o $(bin)MdcSegInfoAxialO.o $(bin)MdcTrackListBase.o $(bin)MdcTrackListCsmc.o $(bin)MdcSegGrouperCsmc.o

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/${CMTCONFIG}/lib
MdcTrkReconLibinstallname = $(library_prefix)MdcTrkReconLib$(library_suffix).$(shlibsuffix)

MdcTrkReconLib :: MdcTrkReconLibinstall

install :: MdcTrkReconLibinstall

MdcTrkReconLibinstall :: $(install_dir)/$(MdcTrkReconLibinstallname)
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

$(install_dir)/$(MdcTrkReconLibinstallname) :: $(bin)$(MdcTrkReconLibinstallname)
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test ! -d "$(install_dir)"; then \
	      mkdir -p $(install_dir); \
	    fi ; \
	    if test -d "$(install_dir)"; then \
	      echo "Installing library $(MdcTrkReconLibinstallname) into $(install_dir)"; \
	      if test -e $(install_dir)/$(MdcTrkReconLibinstallname); then \
	        $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconLibinstallname); \
	        $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconLibinstallname).cmtref; \
	      fi; \
	      $(cmt_install_area_command) `pwd`/$(MdcTrkReconLibinstallname) $(install_dir)/$(MdcTrkReconLibinstallname); \
	      echo `pwd`/$(MdcTrkReconLibinstallname) >$(install_dir)/$(MdcTrkReconLibinstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot install library $(MdcTrkReconLibinstallname), no installation directory specified"; \
	  fi; \
	fi

MdcTrkReconLibclean :: MdcTrkReconLibuninstall

uninstall :: MdcTrkReconLibuninstall

MdcTrkReconLibuninstall ::
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test -d "$(install_dir)"; then \
	      echo "Removing installed library $(MdcTrkReconLibinstallname) from $(install_dir)"; \
	      $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconLibinstallname); \
	      $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconLibinstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot uninstall library $(MdcTrkReconLibinstallname), no installation directory specified"; \
	  fi; \
	fi




#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSeg.d

$(bin)$(binobj)MdcSeg.d :

$(bin)$(binobj)MdcSeg.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSeg.o : $(src)MdcSeg.cxx
	$(cpp_echo) $(src)MdcSeg.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSeg_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSeg_cppflags) $(MdcSeg_cxx_cppflags)  $(src)MdcSeg.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSeg_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSeg.cxx

$(bin)$(binobj)MdcSeg.o : $(MdcSeg_cxx_dependencies)
	$(cpp_echo) $(src)MdcSeg.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSeg_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSeg_cppflags) $(MdcSeg_cxx_cppflags)  $(src)MdcSeg.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GmsList.d

$(bin)$(binobj)GmsList.d :

$(bin)$(binobj)GmsList.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)GmsList.o : $(src)GmsList.cxx
	$(cpp_echo) $(src)GmsList.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(GmsList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(GmsList_cppflags) $(GmsList_cxx_cppflags)  $(src)GmsList.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(GmsList_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)GmsList.cxx

$(bin)$(binobj)GmsList.o : $(GmsList_cxx_dependencies)
	$(cpp_echo) $(src)GmsList.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(GmsList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(GmsList_cppflags) $(GmsList_cxx_cppflags)  $(src)GmsList.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcLine.d

$(bin)$(binobj)MdcLine.d :

$(bin)$(binobj)MdcLine.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcLine.o : $(src)MdcLine.cxx
	$(cpp_echo) $(src)MdcLine.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcLine_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcLine_cppflags) $(MdcLine_cxx_cppflags)  $(src)MdcLine.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcLine_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcLine.cxx

$(bin)$(binobj)MdcLine.o : $(MdcLine_cxx_dependencies)
	$(cpp_echo) $(src)MdcLine.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcLine_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcLine_cppflags) $(MdcLine_cxx_cppflags)  $(src)MdcLine.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrack.d

$(bin)$(binobj)MdcTrack.d :

$(bin)$(binobj)MdcTrack.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrack.o : $(src)MdcTrack.cxx
	$(cpp_echo) $(src)MdcTrack.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrack_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrack_cppflags) $(MdcTrack_cxx_cppflags)  $(src)MdcTrack.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrack_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrack.cxx

$(bin)$(binobj)MdcTrack.o : $(MdcTrack_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrack.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrack_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrack_cppflags) $(MdcTrack_cxx_cppflags)  $(src)MdcTrack.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)mdcTwoInv.d

$(bin)$(binobj)mdcTwoInv.d :

$(bin)$(binobj)mdcTwoInv.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)mdcTwoInv.o : $(src)mdcTwoInv.cxx
	$(cpp_echo) $(src)mdcTwoInv.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(mdcTwoInv_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(mdcTwoInv_cppflags) $(mdcTwoInv_cxx_cppflags)  $(src)mdcTwoInv.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(mdcTwoInv_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)mdcTwoInv.cxx

$(bin)$(binobj)mdcTwoInv.o : $(mdcTwoInv_cxx_dependencies)
	$(cpp_echo) $(src)mdcTwoInv.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(mdcTwoInv_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(mdcTwoInv_cppflags) $(mdcTwoInv_cxx_cppflags)  $(src)mdcTwoInv.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcHitDict.d

$(bin)$(binobj)MdcHitDict.d :

$(bin)$(binobj)MdcHitDict.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcHitDict.o : $(src)MdcHitDict.cxx
	$(cpp_echo) $(src)MdcHitDict.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcHitDict_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcHitDict_cppflags) $(MdcHitDict_cxx_cppflags)  $(src)MdcHitDict.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcHitDict_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcHitDict.cxx

$(bin)$(binobj)MdcHitDict.o : $(MdcHitDict_cxx_dependencies)
	$(cpp_echo) $(src)MdcHitDict.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcHitDict_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcHitDict_cppflags) $(MdcHitDict_cxx_cppflags)  $(src)MdcHitDict.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegData.d

$(bin)$(binobj)MdcSegData.d :

$(bin)$(binobj)MdcSegData.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegData.o : $(src)MdcSegData.cxx
	$(cpp_echo) $(src)MdcSegData.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegData_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegData_cppflags) $(MdcSegData_cxx_cppflags)  $(src)MdcSegData.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegData_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegData.cxx

$(bin)$(binobj)MdcSegData.o : $(MdcSegData_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegData.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegData_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegData_cppflags) $(MdcSegData_cxx_cppflags)  $(src)MdcSegData.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegInfo.d

$(bin)$(binobj)MdcSegInfo.d :

$(bin)$(binobj)MdcSegInfo.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegInfo.o : $(src)MdcSegInfo.cxx
	$(cpp_echo) $(src)MdcSegInfo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfo_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfo_cppflags) $(MdcSegInfo_cxx_cppflags)  $(src)MdcSegInfo.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegInfo_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegInfo.cxx

$(bin)$(binobj)MdcSegInfo.o : $(MdcSegInfo_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegInfo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfo_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfo_cppflags) $(MdcSegInfo_cxx_cppflags)  $(src)MdcSegInfo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegList.d

$(bin)$(binobj)MdcSegList.d :

$(bin)$(binobj)MdcSegList.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegList.o : $(src)MdcSegList.cxx
	$(cpp_echo) $(src)MdcSegList.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegList_cppflags) $(MdcSegList_cxx_cppflags)  $(src)MdcSegList.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegList_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegList.cxx

$(bin)$(binobj)MdcSegList.o : $(MdcSegList_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegList.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegList_cppflags) $(MdcSegList_cxx_cppflags)  $(src)MdcSegList.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GmsListLink.d

$(bin)$(binobj)GmsListLink.d :

$(bin)$(binobj)GmsListLink.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)GmsListLink.o : $(src)GmsListLink.cxx
	$(cpp_echo) $(src)GmsListLink.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(GmsListLink_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(GmsListLink_cppflags) $(GmsListLink_cxx_cppflags)  $(src)GmsListLink.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(GmsListLink_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)GmsListLink.cxx

$(bin)$(binobj)GmsListLink.o : $(GmsListLink_cxx_dependencies)
	$(cpp_echo) $(src)GmsListLink.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(GmsListLink_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(GmsListLink_cppflags) $(GmsListLink_cxx_cppflags)  $(src)GmsListLink.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcFlagHold.d

$(bin)$(binobj)MdcFlagHold.d :

$(bin)$(binobj)MdcFlagHold.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcFlagHold.o : $(src)MdcFlagHold.cxx
	$(cpp_echo) $(src)MdcFlagHold.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcFlagHold_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcFlagHold_cppflags) $(MdcFlagHold_cxx_cppflags)  $(src)MdcFlagHold.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcFlagHold_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcFlagHold.cxx

$(bin)$(binobj)MdcFlagHold.o : $(MdcFlagHold_cxx_dependencies)
	$(cpp_echo) $(src)MdcFlagHold.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcFlagHold_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcFlagHold_cppflags) $(MdcFlagHold_cxx_cppflags)  $(src)MdcFlagHold.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcMakeHits.d

$(bin)$(binobj)MdcMakeHits.d :

$(bin)$(binobj)MdcMakeHits.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcMakeHits.o : $(src)MdcMakeHits.cxx
	$(cpp_echo) $(src)MdcMakeHits.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcMakeHits_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcMakeHits_cppflags) $(MdcMakeHits_cxx_cppflags)  $(src)MdcMakeHits.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcMakeHits_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcMakeHits.cxx

$(bin)$(binobj)MdcMakeHits.o : $(MdcMakeHits_cxx_dependencies)
	$(cpp_echo) $(src)MdcMakeHits.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcMakeHits_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcMakeHits_cppflags) $(MdcMakeHits_cxx_cppflags)  $(src)MdcMakeHits.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcPlotHits.d

$(bin)$(binobj)MdcPlotHits.d :

$(bin)$(binobj)MdcPlotHits.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcPlotHits.o : $(src)MdcPlotHits.cxx
	$(cpp_echo) $(src)MdcPlotHits.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcPlotHits_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcPlotHits_cppflags) $(MdcPlotHits_cxx_cppflags)  $(src)MdcPlotHits.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcPlotHits_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcPlotHits.cxx

$(bin)$(binobj)MdcPlotHits.o : $(MdcPlotHits_cxx_dependencies)
	$(cpp_echo) $(src)MdcPlotHits.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcPlotHits_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcPlotHits_cppflags) $(MdcPlotHits_cxx_cppflags)  $(src)MdcPlotHits.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegUsage.d

$(bin)$(binobj)MdcSegUsage.d :

$(bin)$(binobj)MdcSegUsage.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegUsage.o : $(src)MdcSegUsage.cxx
	$(cpp_echo) $(src)MdcSegUsage.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegUsage_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegUsage_cppflags) $(MdcSegUsage_cxx_cppflags)  $(src)MdcSegUsage.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegUsage_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegUsage.cxx

$(bin)$(binobj)MdcSegUsage.o : $(MdcSegUsage_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegUsage.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegUsage_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegUsage_cppflags) $(MdcSegUsage_cxx_cppflags)  $(src)MdcSegUsage.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrkRecon.d

$(bin)$(binobj)MdcTrkRecon.d :

$(bin)$(binobj)MdcTrkRecon.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrkRecon.o : $(src)MdcTrkRecon.cxx
	$(cpp_echo) $(src)MdcTrkRecon.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrkRecon_cppflags) $(MdcTrkRecon_cxx_cppflags)  $(src)MdcTrkRecon.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrkRecon_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrkRecon.cxx

$(bin)$(binobj)MdcTrkRecon.o : $(MdcTrkRecon_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrkRecon.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrkRecon_cppflags) $(MdcTrkRecon_cxx_cppflags)  $(src)MdcTrkRecon.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcMergeDups.d

$(bin)$(binobj)MdcMergeDups.d :

$(bin)$(binobj)MdcMergeDups.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcMergeDups.o : $(src)MdcMergeDups.cxx
	$(cpp_echo) $(src)MdcMergeDups.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcMergeDups_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcMergeDups_cppflags) $(MdcMergeDups_cxx_cppflags)  $(src)MdcMergeDups.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcMergeDups_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcMergeDups.cxx

$(bin)$(binobj)MdcMergeDups.o : $(MdcMergeDups_cxx_dependencies)
	$(cpp_echo) $(src)MdcMergeDups.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcMergeDups_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcMergeDups_cppflags) $(MdcMergeDups_cxx_cppflags)  $(src)MdcMergeDups.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegFinder.d

$(bin)$(binobj)MdcSegFinder.d :

$(bin)$(binobj)MdcSegFinder.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegFinder.o : $(src)MdcSegFinder.cxx
	$(cpp_echo) $(src)MdcSegFinder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegFinder_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegFinder_cppflags) $(MdcSegFinder_cxx_cppflags)  $(src)MdcSegFinder.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegFinder_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegFinder.cxx

$(bin)$(binobj)MdcSegFinder.o : $(MdcSegFinder_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegFinder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegFinder_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegFinder_cppflags) $(MdcSegFinder_cxx_cppflags)  $(src)MdcSegFinder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegParams.d

$(bin)$(binobj)MdcSegParams.d :

$(bin)$(binobj)MdcSegParams.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegParams.o : $(src)MdcSegParams.cxx
	$(cpp_echo) $(src)MdcSegParams.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegParams_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegParams_cppflags) $(MdcSegParams_cxx_cppflags)  $(src)MdcSegParams.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegParams_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegParams.cxx

$(bin)$(binobj)MdcSegParams.o : $(MdcSegParams_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegParams.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegParams_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegParams_cppflags) $(MdcSegParams_cxx_cppflags)  $(src)MdcSegParams.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrackList.d

$(bin)$(binobj)MdcTrackList.d :

$(bin)$(binobj)MdcTrackList.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrackList.o : $(src)MdcTrackList.cxx
	$(cpp_echo) $(src)MdcTrackList.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackList_cppflags) $(MdcTrackList_cxx_cppflags)  $(src)MdcTrackList.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrackList_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrackList.cxx

$(bin)$(binobj)MdcTrackList.o : $(MdcTrackList_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrackList.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackList_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackList_cppflags) $(MdcTrackList_cxx_cppflags)  $(src)MdcTrackList.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegGrouper.d

$(bin)$(binobj)MdcSegGrouper.d :

$(bin)$(binobj)MdcSegGrouper.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegGrouper.o : $(src)MdcSegGrouper.cxx
	$(cpp_echo) $(src)MdcSegGrouper.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouper_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouper_cppflags) $(MdcSegGrouper_cxx_cppflags)  $(src)MdcSegGrouper.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegGrouper_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegGrouper.cxx

$(bin)$(binobj)MdcSegGrouper.o : $(MdcSegGrouper_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegGrouper.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouper_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouper_cppflags) $(MdcSegGrouper_cxx_cppflags)  $(src)MdcSegGrouper.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegInfoCsmc.d

$(bin)$(binobj)MdcSegInfoCsmc.d :

$(bin)$(binobj)MdcSegInfoCsmc.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegInfoCsmc.o : $(src)MdcSegInfoCsmc.cxx
	$(cpp_echo) $(src)MdcSegInfoCsmc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoCsmc_cppflags) $(MdcSegInfoCsmc_cxx_cppflags)  $(src)MdcSegInfoCsmc.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegInfoCsmc_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegInfoCsmc.cxx

$(bin)$(binobj)MdcSegInfoCsmc.o : $(MdcSegInfoCsmc_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegInfoCsmc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoCsmc_cppflags) $(MdcSegInfoCsmc_cxx_cppflags)  $(src)MdcSegInfoCsmc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegPatterns.d

$(bin)$(binobj)MdcSegPatterns.d :

$(bin)$(binobj)MdcSegPatterns.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegPatterns.o : $(src)MdcSegPatterns.cxx
	$(cpp_echo) $(src)MdcSegPatterns.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegPatterns_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegPatterns_cppflags) $(MdcSegPatterns_cxx_cppflags)  $(src)MdcSegPatterns.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegPatterns_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegPatterns.cxx

$(bin)$(binobj)MdcSegPatterns.o : $(MdcSegPatterns_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegPatterns.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegPatterns_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegPatterns_cppflags) $(MdcSegPatterns_cxx_cppflags)  $(src)MdcSegPatterns.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrackParams.d

$(bin)$(binobj)MdcTrackParams.d :

$(bin)$(binobj)MdcTrackParams.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrackParams.o : $(src)MdcTrackParams.cxx
	$(cpp_echo) $(src)MdcTrackParams.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackParams_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackParams_cppflags) $(MdcTrackParams_cxx_cppflags)  $(src)MdcTrackParams.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrackParams_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrackParams.cxx

$(bin)$(binobj)MdcTrackParams.o : $(MdcTrackParams_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrackParams.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackParams_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackParams_cppflags) $(MdcTrackParams_cxx_cppflags)  $(src)MdcTrackParams.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegGrouperAx.d

$(bin)$(binobj)MdcSegGrouperAx.d :

$(bin)$(binobj)MdcSegGrouperAx.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegGrouperAx.o : $(src)MdcSegGrouperAx.cxx
	$(cpp_echo) $(src)MdcSegGrouperAx.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperAx_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperAx_cppflags) $(MdcSegGrouperAx_cxx_cppflags)  $(src)MdcSegGrouperAx.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegGrouperAx_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegGrouperAx.cxx

$(bin)$(binobj)MdcSegGrouperAx.o : $(MdcSegGrouperAx_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegGrouperAx.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperAx_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperAx_cppflags) $(MdcSegGrouperAx_cxx_cppflags)  $(src)MdcSegGrouperAx.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegGrouperSt.d

$(bin)$(binobj)MdcSegGrouperSt.d :

$(bin)$(binobj)MdcSegGrouperSt.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegGrouperSt.o : $(src)MdcSegGrouperSt.cxx
	$(cpp_echo) $(src)MdcSegGrouperSt.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperSt_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperSt_cppflags) $(MdcSegGrouperSt_cxx_cppflags)  $(src)MdcSegGrouperSt.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegGrouperSt_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegGrouperSt.cxx

$(bin)$(binobj)MdcSegGrouperSt.o : $(MdcSegGrouperSt_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegGrouperSt.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperSt_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperSt_cppflags) $(MdcSegGrouperSt_cxx_cppflags)  $(src)MdcSegGrouperSt.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegInfoSterO.d

$(bin)$(binobj)MdcSegInfoSterO.d :

$(bin)$(binobj)MdcSegInfoSterO.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegInfoSterO.o : $(src)MdcSegInfoSterO.cxx
	$(cpp_echo) $(src)MdcSegInfoSterO.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoSterO_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoSterO_cppflags) $(MdcSegInfoSterO_cxx_cppflags)  $(src)MdcSegInfoSterO.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegInfoSterO_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegInfoSterO.cxx

$(bin)$(binobj)MdcSegInfoSterO.o : $(MdcSegInfoSterO_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegInfoSterO.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoSterO_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoSterO_cppflags) $(MdcSegInfoSterO_cxx_cppflags)  $(src)MdcSegInfoSterO.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegInfoAxialO.d

$(bin)$(binobj)MdcSegInfoAxialO.d :

$(bin)$(binobj)MdcSegInfoAxialO.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegInfoAxialO.o : $(src)MdcSegInfoAxialO.cxx
	$(cpp_echo) $(src)MdcSegInfoAxialO.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoAxialO_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoAxialO_cppflags) $(MdcSegInfoAxialO_cxx_cppflags)  $(src)MdcSegInfoAxialO.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegInfoAxialO_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegInfoAxialO.cxx

$(bin)$(binobj)MdcSegInfoAxialO.o : $(MdcSegInfoAxialO_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegInfoAxialO.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegInfoAxialO_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegInfoAxialO_cppflags) $(MdcSegInfoAxialO_cxx_cppflags)  $(src)MdcSegInfoAxialO.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrackListBase.d

$(bin)$(binobj)MdcTrackListBase.d :

$(bin)$(binobj)MdcTrackListBase.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrackListBase.o : $(src)MdcTrackListBase.cxx
	$(cpp_echo) $(src)MdcTrackListBase.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackListBase_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackListBase_cppflags) $(MdcTrackListBase_cxx_cppflags)  $(src)MdcTrackListBase.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrackListBase_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrackListBase.cxx

$(bin)$(binobj)MdcTrackListBase.o : $(MdcTrackListBase_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrackListBase.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackListBase_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackListBase_cppflags) $(MdcTrackListBase_cxx_cppflags)  $(src)MdcTrackListBase.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrackListCsmc.d

$(bin)$(binobj)MdcTrackListCsmc.d :

$(bin)$(binobj)MdcTrackListCsmc.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcTrackListCsmc.o : $(src)MdcTrackListCsmc.cxx
	$(cpp_echo) $(src)MdcTrackListCsmc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackListCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackListCsmc_cppflags) $(MdcTrackListCsmc_cxx_cppflags)  $(src)MdcTrackListCsmc.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcTrackListCsmc_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcTrackListCsmc.cxx

$(bin)$(binobj)MdcTrackListCsmc.o : $(MdcTrackListCsmc_cxx_dependencies)
	$(cpp_echo) $(src)MdcTrackListCsmc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcTrackListCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcTrackListCsmc_cppflags) $(MdcTrackListCsmc_cxx_cppflags)  $(src)MdcTrackListCsmc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcSegGrouperCsmc.d

$(bin)$(binobj)MdcSegGrouperCsmc.d :

$(bin)$(binobj)MdcSegGrouperCsmc.o : $(cmt_final_setup_MdcTrkReconLib)

$(bin)$(binobj)MdcSegGrouperCsmc.o : $(src)MdcSegGrouperCsmc.cxx
	$(cpp_echo) $(src)MdcSegGrouperCsmc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperCsmc_cppflags) $(MdcSegGrouperCsmc_cxx_cppflags)  $(src)MdcSegGrouperCsmc.cxx
endif
endif

else
$(bin)MdcTrkReconLib_dependencies.make : $(MdcSegGrouperCsmc_cxx_dependencies)

$(bin)MdcTrkReconLib_dependencies.make : $(src)MdcSegGrouperCsmc.cxx

$(bin)$(binobj)MdcSegGrouperCsmc.o : $(MdcSegGrouperCsmc_cxx_dependencies)
	$(cpp_echo) $(src)MdcSegGrouperCsmc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkReconLib_pp_cppflags) $(lib_MdcTrkReconLib_pp_cppflags) $(MdcSegGrouperCsmc_pp_cppflags) $(use_cppflags) $(MdcTrkReconLib_cppflags) $(lib_MdcTrkReconLib_cppflags) $(MdcSegGrouperCsmc_cppflags) $(MdcSegGrouperCsmc_cxx_cppflags)  $(src)MdcSegGrouperCsmc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: MdcTrkReconLibclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(MdcTrkReconLib.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

MdcTrkReconLibclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library MdcTrkReconLib
	-$(cleanup_silent) cd $(bin); /bin/rm -f $(library_prefix)MdcTrkReconLib$(library_suffix).a $(library_prefix)MdcTrkReconLib$(library_suffix).s? MdcTrkReconLib.stamp MdcTrkReconLib.shstamp
#-- end of cleanup_library ---------------
