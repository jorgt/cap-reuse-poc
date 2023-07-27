using tmr.poc.treatment as db from '../db/schema';

service TreatmentService {
    entity Treatment as projection on db.Treatment;
}