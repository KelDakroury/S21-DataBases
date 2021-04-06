
-- terminal 2
start transaction;

-- 2. start a transaction and update the username for “Alice Jones” as “ajones”
update accounts
set username = 'ajones'
where fullname = 'Alice Jones';

-- 4. display again the accounts table
select * from accounts;

commit transaction;

-- ex2
begin transaction;
-- 2. move bob to group_id = 2
update accounts set group_id = 2 where username = 'bbrown';

commit transaction;
