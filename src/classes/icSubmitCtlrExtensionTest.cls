@isTest
public class icSubmitCtlrExtensionTest {
    @isTest
    public static void testIcSubmitCtlrExtension() {
        //Setup Test Data
        Suggestion__c sug;
        icController ctrl = new icController();
        PageReference testSubmitLoc;
        
        //Start
        Test.startTest();

        


        //Calling your class / method
        icSubmitCtlrExtension isce = new icSubmitCtlrExtension(ctrl);
        testSubmitLoc = isce.submitLoc();

        //End
        Test.stopTest();

        /*
        Assert the changes have worked
            If you have inserted/updated/deleted data, you need to query for the updates
            Run System.assert, System.assertEquals, System.assertNotEquals to verify that you got the correct data back
        */
       
        System.assertEquals(ctrl.toThankYou(),testSubmitLoc);
    }
}