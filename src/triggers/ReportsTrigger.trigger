trigger ReportsTrigger on Report__c (before insert) {
    if (Trigger.isBefore){
        if (Trigger.isInsert){
            for (Report__c rpt : Trigger.new){
                rpt.Name = 'Report';
                if (rpt.StatusDateTime__c == null){
                    rpt.StatusDateTime__c = DateTime.now();
                }
            }
        }
    }
}