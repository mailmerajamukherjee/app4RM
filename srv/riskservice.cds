using {RiskService as rm } from '../db/All Files';

@path : 'servive/risk'
service RiskService {
    entity Risks as projection on rm.Risks;
    annotate Risks with @odata.draft.enabled; 
    entity Mitigations as projection on rm.Mitigations;
    annotate Mitigations with @odata.draft.enabled;

}