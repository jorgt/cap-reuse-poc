using tmr.poc.common as db from '../db/schema';

service CommonService {
    entity District as projection on db.District;
}