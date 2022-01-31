/* 
   CS 195
   Patrick Rakowicz
   Aggregates, Group By and Math
*/
USE Create_Tables;

#1
select orderId, sum(quantity) from orderLines;

#2 - # sum(quantity) deff of problem
select group by orderid, sum(quantity)

#4
select price, .07 * price, price * 1.07

#8
select count(quantity) from orderLines;

#11
print date from decending and display
