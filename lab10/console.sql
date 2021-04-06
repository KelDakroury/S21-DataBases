drop table if exists accounts;
create table accounts
(
    username varchar(255) primary key,
    fullname varchar(255),
    balance  int,
    group_id int
);
insert into accounts(username, fullname, balance, group_id)
values ('jones', 'Alice Jones', 82, 1);
insert into accounts(username, fullname, balance, group_id)
values ('bitdiddl', 'Ben Bitdiddle', 65, 1);
insert into accounts(username, fullname, balance, group_id)
values ('mike', 'Michael Dole', 73, 2);
insert into accounts(username, fullname, balance, group_id)
values ('alyssa', 'Alyssa P. Hacker', 79, 3);
insert into accounts(username, fullname, balance, group_id)
values ('bbrown', 'Bob Brown', 100, 3);

select * from accounts;

update accounts
set username = 'jones'
where fullname = 'Alice Jones';