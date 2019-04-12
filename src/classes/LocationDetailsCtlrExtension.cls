public class LocationDetailsCtlrExtension {

    public Location__c dispLoc {get;set;}
    public Report__c lastKnownStatus {get;set;}
    public Date lastLogDate {get;set;}
    public Time lastLogTime {get;set;}
    public  String statusImg {get;set;}
    private icController myCtlr;
    
    public LocationDetailsCtlrExtension(icController ctlr){
        Id dispLocId = ApexPages.currentPage().getParameters().get('locId');
        System.debug('dispLocId: ' + dispLocId);
        //myCtlr = ctlr;
        System.debug('ctlr.selectedLocId: ' + ctlr.selectedLocId);
    List<Location__c> dispLocs = [select id, LocationName__c, Street__c, State__c, City__c, Address__c
                   				  from Location__c
                                  where Id=:dispLocId];
        if (dispLocs.Size() > 0)
            dispLoc = dispLocs[0];
        else
            dispLoc = null;
        
        System.debug('dispLoc: ' + dispLoc);
        
        // Get most recent report and put in lastKnownStatus
    List<Report__c> lastKnownStatuses = [select Status__c, StatusDateTime__c, McDLoc__c
                           from Report__c
                           where McDLoc__c=:dispLocId
                           order by StatusDateTime__c ASC
                           limit 1];
        if (lastKnownStatuses.Size() > 0)
            lastKnownStatus = lastKnownStatuses[0];
        else
            lastKnownStatus = null;
        
        System.debug('lastKnownStatus: ' + lastKnownStatus);
        
        if (lastKnownStatus != null){
          lastLogDate = lastKnownStatus.StatusDateTime__c.date();
          lastLogTime = lastKnownStatus.StatusDateTime__c.time();
          if (lastKnownStatus.Status__c == 'Up')
              statusImg='/resource/1554565529000/ThumbsUp';
          else
              statusImg='/resource/1554565529000/ThumbsDown';
        } else {
            lastLogDate = Date.today();
            lastLogTime = Datetime.now().time();
            statusImg='/resource/1554565529000/ThumbsDown';
        }
        
    }
    
    public PageReference goToStatusNow(){
        PageReference pg = Page.icStatusNow;
        pg.getParameters().put('locId', dispLoc.Id);
        return pg; 
    }
    
    /* public PageReference goToStatusPast(){
        PageReference pg = Page.icStatusPast;
        pg.getParameters().put('locId', dispLoc.Id);
        return pg; 
    }
*/
  }