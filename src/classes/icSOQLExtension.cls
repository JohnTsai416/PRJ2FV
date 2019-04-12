public class icSOQLExtension {
    //Properties
    public String searchCity {get;set;}
    public List<Location__c> locs {get;set;}
    
    //Constructor
    public icSOQLExtension(icController ctrl){
        locs = new List<Location__c>();  
    }
    
    /*
  * Queries records via a user input(@searchCity)
  */
    
    public void searchInCity() {
        locs = [select Id, LocationName__c, Address__c,street__c, city__c, state__c, zipCode__c, geoloc__Latitude__s, geoloc__Longitude__s  
                from Location__c where city__c=:searchCity];
    }
    
    public List<SelectOption> getLocationOptions() {
        List<SelectOption> locations = new List<SelectOption>();
        //locations.add(new SelectOption('Loc1','Loc1')); 
        //locations.add(new SelectOption('Loc2','Loc2')); 
        for (Location__c l : locs) {
            System.debug('l: ' + l);
            locations.add(new SelectOption(l.Id, l.street__c + ' ' +l.state__c));
        }
        return locations; 
    }
    
}