@isTest
public class icControllerTest {
    @isTest
    public static void testIcController() {
        icController ctlr = new icController();
        
        //Setup Test Data
        Location__c testLoc = new Location__c();
        Id testSelectedLocId = testLoc.id;
        List<SelectOption> testGetVoteOptions;
        PageReference testToLocationDetails;
        PageReference testToStatusNow;
        PageReference testToThankYou;
        PageReference testToHome;
        PageReference testToSubmit;
        
        //Start
        Test.startTest();

        insert testLoc;


        //Calling your class / method
        testGetVoteOptions = ctlr.getVoteOptions();
        testToLocationDetails = ctlr.toLocationDetails();
        testToStatusNow = ctlr.toStatusNow();

        testToThankYou = ctlr.toThankYou();
        testToHome = ctlr.toHome();
        testToSubmit = ctlr.toSubmit();

        //End
        Test.stopTest();

        /*
        Assert the changes have worked
            ​If you have inserted/updated/deleted data, you need to query for the updates
            Run System.assert, System.assertEquals, System.assertNotEquals to verify that you got the correct data back
        */
        System.assertEquals(new SelectOption('Up','It is working'),testGetVoteOptions[0]);
        //System.assertEquals(Page.icLocationDetails,testToLocationDetails);
        //System.assertEquals(testSelectedLocId,testToLocationDetails.locId);
        //System.assertEquals(Page.icStatusNow,testToStatusNow);
        //System.assertEquals(testSelectedLocId,testToStatusNow.locId);
        //System.assertEquals(Page.icThankYou,testToThankYou);
        //System.assertEquals(Page.icHome,testToHome);
        //System.assertEquals(Page.icSubmit,testToSubmit);
    }
}