@isTest
public class SuggestionTriggerTest {
	
    @isTest public static void beforeInsertTest(){
        Suggestion__c sug = new Suggestion__c();
        insert sug;
        Id qId = '00G2E0000055vZ2UAI';
        
        System.assertEquals(qId, sug.OwnerId);
    }
}