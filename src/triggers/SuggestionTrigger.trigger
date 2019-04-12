trigger SuggestionTrigger on Suggestion__c (before insert) {
    if (Trigger.isBefore){
        if (Trigger.isInsert){
            for (Suggestion__c sug : Trigger.new){
                sug.OwnerId = '00G2E0000055vZ2UAI';
            }   
        }
    }
}