/* 
   CS 195
   Patrick Rakowicz
   Contact Info 1 to N
*/
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
select email as "Email", friendName as "Name"
from friends join emails
on emails.friendId = friends.friendId
order by friendName;

#4
select phone as "Phone Number", friendName as "Name"
from phones join friends
on phones.friendId = friends.friendId
order by friendName;
