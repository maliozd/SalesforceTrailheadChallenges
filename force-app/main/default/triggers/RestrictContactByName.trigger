trigger RestrictContactByName on Contact (before insert, before update) {

    for (Contact ct : Trigger.new){
        if(ct.LastName == 'INVALIDNAME'){
            ct.AddError('The Last Name "'+ct.LastName+'" is not allowed for DML');
        }
    }
}