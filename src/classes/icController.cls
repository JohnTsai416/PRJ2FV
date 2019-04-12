public virtual class icController {
    //Properties
    public boolean locationSelect{get;set;}
    public Id selectedLocId {
        get;
        set {
            System.debug('value: ' + value);
            selectedLocId = value;
        }
    }
    public Location__c loc{get;set;}   
    //public String locId{get;set;}  
    //public String locCity{get;set;}
    //public Location__c selectedLoc = [SELECT id FROM Location__c Where id=:selectedLocId];
    
    //Constructor
    public icController(){ 

    }
    
    /*
     * Adds options to a selection.
     * 
   * @return     A list of options
     */
    public List<SelectOption> getVoteOptions() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Up','It is working')); 
        options.add(new SelectOption('Down','It is not working')); 
        return options; 
    }
    
    //Page Navigation
    public PageReference toLocationDetails(){
        PageReference pg = Page.icLocationDetails;
        pg.getParameters().put('locId', selectedLocId);
        System.debug('selectedLocId: ' + selectedLocId);
        return pg; 
    }
    
    public PageReference toStatusNow(){
        PageReference pg = Page.icStatusNow;
        pg.getParameters().put('locId', selectedLocId);
        return pg; 
    }
    
    /*
    public PageReference toStatusPast(){
        PageReference pg = Page.icStatusPast;
        pg.getParameters().put('locId', selectedLocId);
        return pg; 
    }
	*/
    
    public PageReference toThankYou(){
        return Page.icThankYou; 
    }
    // on all pages - bind to an icon or title of site
    public PageReference toHome(){             
        return Page.icHome; 
    }
    // This goes on all/any pages to redirect to the submit location page. 
    // TODO - bind it to an icon
    public PageReference toSubmit(){            
        return Page.icSubmit;                   
    }
    

    /*public String getVote(){
return vote;
}

public void setVote(String vote) { this.vote = vote; } 

public date getPastDate(){
return pastDate;
}

public void setPastDate(date pastDate) { this.pastDate = pastDate; } 

public time getPastTime(){
return pastTime;
}

public void setPastTime(time pastTime) { this.pastTime = pastTime; } 
*/
}