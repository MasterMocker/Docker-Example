create database quotes;
use quotes;
create table quotes
(
	index_ref int(2) PRIMARY KEY AUTO_INCREMENT,
	quote varchar(255)
);
-- Add additional quotes in the following format ("<quote>")
-- primary key indexing is automatic
insert into quotes(quote) values ("Do or Do not, there is no Try"),("Am I missing and eyebrow"),("Yesterday is History, Tomorrow is a mystery, but today is a gift");