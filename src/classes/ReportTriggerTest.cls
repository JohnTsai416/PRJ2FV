@isTest
public class ReportTriggerTest {
	
    @isTest public static void testBeforeInsert(){
        Report__c rpt = new Report__c();
        
        insert rpt;
        System.assertNotEquals(null, rpt.StatusDateTime__c);
    }
}