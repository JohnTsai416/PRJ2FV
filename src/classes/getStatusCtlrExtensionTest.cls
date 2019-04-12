@isTest
public class getStatusCtlrExtensionTest {
@isTest
    public static void testGetStatusCtlrExtension() {
        //Setup Test Data
        icController ctrl = new icController();
        PageReference testSubmitNow;
        Location__c testSelLoc;

		        

        
        //Start
        Test.startTest();

        


        //Calling your class / method
        getStatusCtlrExtension gsce = new getStatusCtlrExtension(ctrl);
		testSubmitNow = gsce.submitNow();
        testSelLoc = gsce.selectedLoc;
        //gsce. ;

        //End
        Test.stopTest();

        /*
        Assert the changes have worked
            If you have inserted/updated/deleted data, you need to query for the updates
            Run System.assert, System.assertEquals, System.assertNotEquals to verify that you got the correct data back
        */
       System.assertEquals(ctrl.toThankYou(), testSubmitNow);
        System.assertNotEquals(null, testSelLoc);
        System.assertEquals('Up', gsce.vote);
        System.assertEquals(null, gsce.submitNow());
        

        
    }
}