using {
    sap,
    cuid
} from '@sap/cds/common';
using {tmr.poc.common as common} from 'common/db/schema';

namespace tmr.poc.treatment;

entity Treatment : cuid {
    district : Association to common.District;
    name     : String;
}
