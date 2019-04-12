public class icSubmitCtlrExtension {
    
    public Suggestion__c sug {get;set;}
    private icController ctlr;
    
    public icSubmitCtlrExtension(icController ctrl){
        sug = new Suggestion__c();
        
        this.ctlr = ctrl;
    }
    
    public PageReference submitLoc(){   
        try {
          insert sug;   
        } catch (DmlException dme) {
            ApexPages.addMessages(dme);
            return null;
        }
        
        return ctlr.toThankYou();
    }
}