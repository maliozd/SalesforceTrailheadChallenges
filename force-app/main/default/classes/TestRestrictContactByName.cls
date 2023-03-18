@isTest
private class TestRestrictContactByName {
  @IsTest
  static void methodName() {
    Contact contact1 = new Contact(
      FirstName = 'Mali1',
      LastName = 'INVALIDNAME'
    );

    Test.startTest();
    Database.SaveResult result = Database.insert(contact1);
    Test.stopTest();
    System.assert(!result.isSuccess());
    System.assert(result.getErrors().size() > 0);
    System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',result.getErrors()[0].getMessage());
    //  3
  }
}
