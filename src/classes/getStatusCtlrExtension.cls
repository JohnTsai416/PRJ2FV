public class getStatusCtlrExtension {
    //Properties

    public String vote{get; set;}
    private icController icCtlr;
    public Location__c selectedLoc{get;set;}
    public Id dspLocId;


    /*
     * Constructor
     * 
     * @param ctlr     instance of icController
     */
    public getStatusCtlrExtension(icController ctlr){
        
        Id dispLocId = ApexPages.currentPage().getParameters().get('locId');
        dspLocId = dispLocId;
        System.debug('dispLocId:' + dispLocId);
        System.debug('ctlr.selectedLoc: '+ctlr.selectedLocId);
        selectedLoc = [select id, LocationName__c, street__c, state__c, city__c
                   from Location__c
                   where Id=:dispLocId];
        icCtlr = ctlr;
        vote = 'Up';
    }
    
    /*
     * @description
     * 
     * @return    a reference to the 'Thank You' page
     */
    
    public PageReference submitNow(){
        Report__c rpt = new Report__c();
        rpt.Name = 'Report';
        rpt.Status__c = vote;
        rpt.McDLoc__c = dspLocId;
        rpt.StatusDateTime__c = DateTime.now();
        
        try {
            insert rpt;
        } catch (DmlException dme){
            System.debug(dme.getMessage());
            return null;
        }
        
        return icCtlr.toThankYou();
    }
    

}