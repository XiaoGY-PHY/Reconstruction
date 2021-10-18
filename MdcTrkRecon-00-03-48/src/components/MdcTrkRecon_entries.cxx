#include "GaudiKernel/DeclareFactoryEntries.h"
#include "MdcTrkRecon/MdcTrkRecon.h"
#include "MdcTrkRecon/MdcMakeHits.h"
#include "MdcTrkRecon/MdcMergeDups.h"

DECLARE_ALGORITHM_FACTORY( MdcTrkRecon )
DECLARE_ALGORITHM_FACTORY(MdcMakeHits)
DECLARE_ALGORITHM_FACTORY(MdcMergeDups)

DECLARE_FACTORY_ENTRIES( MdcTrkRecon ) {
  DECLARE_ALGORITHM(MdcTrkRecon);
  DECLARE_ALGORITHM(MdcMakeHits);
  DECLARE_ALGORITHM(MdcMergeDups);
}
