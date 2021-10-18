# echo "cleanup MdcTrkRecon MdcTrkRecon-00-03-48 in /cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtMdcTrkRecontempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtMdcTrkRecontempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt cleanup -csh -pack=MdcTrkRecon -version=MdcTrkRecon-00-03-48 -path=/cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec  $* >${cmtMdcTrkRecontempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt cleanup -csh -pack=MdcTrkRecon -version=MdcTrkRecon-00-03-48 -path=/cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec  $* >${cmtMdcTrkRecontempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtMdcTrkRecontempfile}
  unset cmtMdcTrkRecontempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtMdcTrkRecontempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtMdcTrkRecontempfile}
unset cmtMdcTrkRecontempfile
exit $cmtcleanupstatus

