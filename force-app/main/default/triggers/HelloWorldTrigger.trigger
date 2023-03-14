trigger HelloWorldTrigger on Account (before insert) {
System.debug('Hello World');
for (Account account : Trigger.new){
    account.Description = 'New Description';
}

}