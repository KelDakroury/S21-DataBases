-- terminal 1

-- ex1
-- begin isolation level read committed;
begin isolation level repeatable read;
begin transaction;

-- 1. display accounts information
select * from accounts;
-- 3. display again the accounts table
select * from accounts;

commit transaction;

-- ex2
begin isolation level read committed;
-- begin isolation level repeatable read;

begin transaction;

-- 1. read accounts with group_id = 2 (T1)
select * from accounts where group_id = 2;

-- 3. read accounts with group_id = 2
-- then Update selected accounts balances by +15 (T1).
select * from accounts where group_id = 2;
update accounts set
balance = balance + 15 where group_id = 2;
select * from accounts;

-- commit only at the end
commit transaction;
