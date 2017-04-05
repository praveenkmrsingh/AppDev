trigger RestrictInvoiceDeletion on Invoice_Statement__c (before delete) {
for (Invoice_Statement__c invoice : [SELECT Id from Invoice_Statement__c WHERE Id IN (SELECT Invoice_Statement__c from Line_Item__c)
                                     AND Id IN : Trigger.old]){
                                         Trigger.oldMap.get(Invoice.Id).addError('Cannot delete Invoice with LineItems');
                                     }
}