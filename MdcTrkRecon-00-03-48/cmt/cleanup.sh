# echo "cleanup MdcTrkRecon MdcTrkRecon-00-03-48 in /cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtMdcTrkRecontempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtMdcTrkRecontempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=MdcTrkRecon -version=MdcTrkRecon-00-03-48 -path=/cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec  $* >${cmtMdcTrkRecontempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=MdcTrkRecon -version=MdcTrkRecon-00-03-48 -path=/cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.6.a/Reconstruction/MdcPatRec  $* >${cmtMdcTrkRecontempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtMdcTrkRecontempfile}
  unset cmtMdcTrkRecontempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtMdcTrkRecontempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtMdcTrkRecontempfile}
unset cmtMdcTrkRecontempfile
return $cmtcleanupstatus

