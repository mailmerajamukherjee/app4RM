namespace riskmanagement;

using {managed} from '@sap/cds/common';

entity Risks : managed { 

key ID  : UUID@(Core.Computed: true);
title   : String(100);
owner   : String;
prio    : String(5);
descr   : String;
miti    : Association to mitigations;
impact  : Integer;
criticality :   Integer;

} 

entity mitigations : managed {

    key ID  : UUID@(Core.Computed: true);
    descr   : String;
    owner   : String;
    timeline: String; 
    risk    : Association to many Risks 
                        on risk.miti = $self;

}