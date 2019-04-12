@isTest
public class icSOQLExtensionTest {
    @isTest
    public static void testIcSOQLExtension() {
        //Setup Test Data
        
        List<SelectOption> testGetLocationOptions;
        PageReference testToLocationDetails;
        PageReference testToSubmit;
        String testSearchCity = 'Test';
        Location__c testLocation = new Location__c(street__c='123 North St', city__c=testSearchCity);
        icController testCtrl = new icController();
        Id testSelectedLocId = testLocation.Id;
		icSOQLExtension isoqle = new icSOQLExtension(testCtrl);

        //Start
        Test.startTest();

        insert testLocation;
        //Calling your class / method
       	List<SelectOption> glo = isoqle.getLocationOptions();

        //End
        Test.stopTest();

        /*
        Assert the changes have worked
            ​If you have inserted/updated/deleted data, you need to query for the updates
            Run System.assert, System.assertEquals, System.assertNotEquals to verify that you got the correct data back
        */
       
        
        System.assertEquals(Page.icLocationDetails,testToLocationDetails);
        //System.assertEquals(testSelectedLocId,testToLocationDetails.locId);

    }
}