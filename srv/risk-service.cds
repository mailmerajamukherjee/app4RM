using {riskmanagement as rm } from '../db/All Files';

@path : 'servive/risk'
service RiskService {
    entity Risks as projection on rm.Risks;
    annotate Risks with @odata.draft.enabled; 
    entity Mitigations as projection on rm.mitigations;
    annotate Mitigations with @odata.draft.enabled;

}