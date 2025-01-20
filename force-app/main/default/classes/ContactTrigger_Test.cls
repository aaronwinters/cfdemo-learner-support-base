@isTest
public class ContactTrigger_Test {
    @isTest
    static void testCreateContact() {
        // Create a new Contact record with only the required field (LastName)
        Contact testContact = new Contact(LastName = 'Smith', External_Id__c = '123');
        
        // Insert the Contact record
        insert testContact;
        
        // Query the inserted Contact to verify it exists
        Contact insertedContact = [SELECT Id, LastName FROM Contact WHERE Id = :testContact.Id LIMIT 1];
        
        // Assert that the inserted contact's LastName is 'Doe'
        System.assertEquals('Smith', insertedContact.LastName, 'The LastName should be "Doe".');
    }
}