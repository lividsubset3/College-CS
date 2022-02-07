use contactInfo;

#1 
select friendName, email
from friends join emails
on friends.friendId = emails.friendId
where friendName = 'Mike Lopez';

#2
select friendName, phones
from friends join phones
on friend.friendId = phones.friendId
where friendName = 'Mike Lopez';

#3