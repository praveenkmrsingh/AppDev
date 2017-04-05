public class NewAndExistingController{
   public Account account {get; set;}
    public NewAndExistingController() {
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id==null) ? new Account(): [SELECT Name, Phone, Industry FROM Account WHERE Id = :id];
    }    
    public PageReference save() {
        upsert account;
        return null;
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return (redirectSuccess);
    }
    
   

}