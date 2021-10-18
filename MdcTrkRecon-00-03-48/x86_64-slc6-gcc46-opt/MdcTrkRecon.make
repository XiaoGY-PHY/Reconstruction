#-- start of make_header -----------------

#====================================
#  Library MdcTrkRecon
#
#   Generated Wed Aug 11 16:20:22 2021  by bes3pub
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_MdcTrkRecon_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_MdcTrkRecon_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_MdcTrkRecon

MdcTrkRecon_tag = $(tag)

#cmt_local_tagfile_MdcTrkRecon = $(MdcTrkRecon_tag)_MdcTrkRecon.make
cmt_local_tagfile_MdcTrkRecon = $(bin)$(MdcTrkRecon_tag)_MdcTrkRecon.make

else

tags      = $(tag),$(CMTEXTRATAGS)

MdcTrkRecon_tag = $(tag)

#cmt_local_tagfile_MdcTrkRecon = $(MdcTrkRecon_tag).make
cmt_local_tagfile_MdcTrkRecon = $(bin)$(MdcTrkRecon_tag).make

endif

include $(cmt_local_tagfile_MdcTrkRecon)
#-include $(cmt_local_tagfile_MdcTrkRecon)

ifdef cmt_MdcTrkRecon_has_target_tag

cmt_final_setup_MdcTrkRecon = $(bin)setup_MdcTrkRecon.make
cmt_dependencies_in_MdcTrkRecon = $(bin)dependencies_MdcTrkRecon.in
#cmt_final_setup_MdcTrkRecon = $(bin)MdcTrkRecon_MdcTrkReconsetup.make
cmt_local_MdcTrkRecon_makefile = $(bin)MdcTrkRecon.make

else

cmt_final_setup_MdcTrkRecon = $(bin)setup.make
cmt_dependencies_in_MdcTrkRecon = $(bin)dependencies.in
#cmt_final_setup_MdcTrkRecon = $(bin)MdcTrkReconsetup.make
cmt_local_MdcTrkRecon_makefile = $(bin)MdcTrkRecon.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)MdcTrkReconsetup.make

#MdcTrkRecon :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'MdcTrkRecon'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = MdcTrkRecon/
#MdcTrkRecon::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

MdcTrkReconlibname   = $(bin)$(library_prefix)MdcTrkRecon$(library_suffix)
MdcTrkReconlib       = $(MdcTrkReconlibname).a
MdcTrkReconstamp     = $(bin)MdcTrkRecon.stamp
MdcTrkReconshstamp   = $(bin)MdcTrkRecon.shstamp

MdcTrkRecon :: dirs  MdcTrkReconLIB
	$(echo) "MdcTrkRecon ok"

#-- end of libary_header ----------------

MdcTrkReconLIB :: $(MdcTrkReconlib) $(MdcTrkReconshstamp)
	@/bin/echo "------> MdcTrkRecon : library ok"

$(MdcTrkReconlib) :: $(bin)MdcTrkRecon_load.o $(bin)MdcTrkRecon_entries.o
	$(lib_echo) library
	$(lib_silent) cd $(bin); \
	  $(ar) $(MdcTrkReconlib) $?
	$(lib_silent) $(ranlib) $(MdcTrkReconlib)
	$(lib_silent) cat /dev/null >$(MdcTrkReconstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

$(MdcTrkReconlibname).$(shlibsuffix) :: $(MdcTrkReconlib) $(MdcTrkReconstamps)
	$(lib_silent) cd $(bin); QUIET=$(QUIET); $(make_shlib) "$(tags)" MdcTrkRecon $(MdcTrkRecon_shlibflags)

$(MdcTrkReconshstamp) :: $(MdcTrkReconlibname).$(shlibsuffix)
	@if test -f $(MdcTrkReconlibname).$(shlibsuffix) ; then cat /dev/null >$(MdcTrkReconshstamp) ; fi

MdcTrkReconclean ::
	$(cleanup_echo) objects
	$(cleanup_silent) cd $(bin); /bin/rm -f $(bin)MdcTrkRecon_load.o $(bin)MdcTrkRecon_entries.o

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
MdcTrkReconinstallname = $(library_prefix)MdcTrkRecon$(library_suffix).$(shlibsuffix)

MdcTrkRecon :: MdcTrkReconinstall

install :: MdcTrkReconinstall

MdcTrkReconinstall :: $(install_dir)/$(MdcTrkReconinstallname)
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

$(install_dir)/$(MdcTrkReconinstallname) :: $(bin)$(MdcTrkReconinstallname)
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test ! -d "$(install_dir)"; then \
	      mkdir -p $(install_dir); \
	    fi ; \
	    if test -d "$(install_dir)"; then \
	      echo "Installing library $(MdcTrkReconinstallname) into $(install_dir)"; \
	      if test -e $(install_dir)/$(MdcTrkReconinstallname); then \
	        $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconinstallname); \
	        $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconinstallname).cmtref; \
	      fi; \
	      $(cmt_install_area_command) `pwd`/$(MdcTrkReconinstallname) $(install_dir)/$(MdcTrkReconinstallname); \
	      echo `pwd`/$(MdcTrkReconinstallname) >$(install_dir)/$(MdcTrkReconinstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot install library $(MdcTrkReconinstallname), no installation directory specified"; \
	  fi; \
	fi

MdcTrkReconclean :: MdcTrkReconuninstall

uninstall :: MdcTrkReconuninstall

MdcTrkReconuninstall ::
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test -d "$(install_dir)"; then \
	      echo "Removing installed library $(MdcTrkReconinstallname) from $(install_dir)"; \
	      $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconinstallname); \
	      $(cmt_uninstall_area_command) $(install_dir)/$(MdcTrkReconinstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot uninstall library $(MdcTrkReconinstallname), no installation directory specified"; \
	  fi; \
	fi




#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrkRecon_load.d

$(bin)$(binobj)MdcTrkRecon_load.d :

$(bin)$(binobj)MdcTrkRecon_load.o : $(cmt_final_setup_MdcTrkRecon)

$(bin)$(binobj)MdcTrkRecon_load.o : $(src)components/MdcTrkRecon_load.cxx
	$(cpp_echo) $(src)components/MdcTrkRecon_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(lib_MdcTrkRecon_pp_cppflags) $(MdcTrkRecon_load_pp_cppflags) $(use_cppflags) $(MdcTrkRecon_cppflags) $(lib_MdcTrkRecon_cppflags) $(MdcTrkRecon_load_cppflags) $(MdcTrkRecon_load_cxx_cppflags) -I../src/components $(src)components/MdcTrkRecon_load.cxx
endif
endif

else
$(bin)MdcTrkRecon_dependencies.make : $(MdcTrkRecon_load_cxx_dependencies)

$(bin)MdcTrkRecon_dependencies.make : $(src)components/MdcTrkRecon_load.cxx

$(bin)$(binobj)MdcTrkRecon_load.o : $(MdcTrkRecon_load_cxx_dependencies)
	$(cpp_echo) $(src)components/MdcTrkRecon_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(lib_MdcTrkRecon_pp_cppflags) $(MdcTrkRecon_load_pp_cppflags) $(use_cppflags) $(MdcTrkRecon_cppflags) $(lib_MdcTrkRecon_cppflags) $(MdcTrkRecon_load_cppflags) $(MdcTrkRecon_load_cxx_cppflags) -I../src/components $(src)components/MdcTrkRecon_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),MdcTrkReconclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MdcTrkRecon_entries.d

$(bin)$(binobj)MdcTrkRecon_entries.d :

$(bin)$(binobj)MdcTrkRecon_entries.o : $(cmt_final_setup_MdcTrkRecon)

$(bin)$(binobj)MdcTrkRecon_entries.o : $(src)components/MdcTrkRecon_entries.cxx
	$(cpp_echo) $(src)components/MdcTrkRecon_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(lib_MdcTrkRecon_pp_cppflags) $(MdcTrkRecon_entries_pp_cppflags) $(use_cppflags) $(MdcTrkRecon_cppflags) $(lib_MdcTrkRecon_cppflags) $(MdcTrkRecon_entries_cppflags) $(MdcTrkRecon_entries_cxx_cppflags) -I../src/components $(src)components/MdcTrkRecon_entries.cxx
endif
endif

else
$(bin)MdcTrkRecon_dependencies.make : $(MdcTrkRecon_entries_cxx_dependencies)

$(bin)MdcTrkRecon_dependencies.make : $(src)components/MdcTrkRecon_entries.cxx

$(bin)$(binobj)MdcTrkRecon_entries.o : $(MdcTrkRecon_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/MdcTrkRecon_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(MdcTrkRecon_pp_cppflags) $(lib_MdcTrkRecon_pp_cppflags) $(MdcTrkRecon_entries_pp_cppflags) $(use_cppflags) $(MdcTrkRecon_cppflags) $(lib_MdcTrkRecon_cppflags) $(MdcTrkRecon_entries_cppflags) $(MdcTrkRecon_entries_cxx_cppflags) -I../src/components $(src)components/MdcTrkRecon_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: MdcTrkReconclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(MdcTrkRecon.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

MdcTrkReconclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library MdcTrkRecon
	-$(cleanup_silent) cd $(bin); /bin/rm -f $(library_prefix)MdcTrkRecon$(library_suffix).a $(library_prefix)MdcTrkRecon$(library_suffix).s? MdcTrkRecon.stamp MdcTrkRecon.shstamp
#-- end of cleanup_library ---------------
