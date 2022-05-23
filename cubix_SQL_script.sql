use cubix;
select * from daybook_edit
where date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22";

## fetching records of sales 
select * from daybook_edit
where vch_type like "%sal%" and ( date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22") ;

## fetching records of sales 
select * from daybook_edit
where vch_type like "%purchase%" and ( date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22") ;

## ## fetching records of sales 
select * from daybook_edit
where vch_type like "%pay%" and ( date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22") ;

## ## fetching records of sales 
select * from daybook_edit
where vch_type like "%rec%" ;

## fetching records of sales 
select * from daybook_edit
where vch_type like "%note%" ;

## fetching records of sales 
select particulars,vch_type,sum(debit_amount),sum(credit_amount) from daybook_edit
group by particulars,vch_type
having vch_type like "sale%" or vch_type like "pur%" or vch_type like "pay%" 
and ( date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22")
order by debit_amount desc;

select sum(x.y) from (select narration,vch_type,sum(debit_amount) as y,sum(credit_amount) from daybook_edit
where date like "%-jan-22" or date like "%-feb-22" or date like "%-mar-22" 
group by narration) as x;










