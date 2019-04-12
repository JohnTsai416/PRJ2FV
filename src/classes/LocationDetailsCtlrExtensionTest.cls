@isTest
public class LocationDetailsCtlrExtensionTest {
    @isTest
    public static void testLocationDetailsCtlrExtension() {
        //Setup Test Data
        LocationDetailsCtlrExtension ldce = new LocationDetailsCtlrExtension(new icController());
		PageReference testGoToStatusNow;

        
        
        //Start
        Test.startTest();
		testGoToStatusNow = ldce.goToStatusNow();		
        


        //Calling your class / method
       

        //End
        Test.stopTest();

        /*
        Assert the changes have worked
            If you have inserted/updated/deleted data, you need to query for the updates
            Run System.assert, System.assertEquals, System.assertNotEquals to verify that you got the correct data back
        */
       System.assertEquals(Page.icStatusNow, testGoToStatusNow);

    }
}