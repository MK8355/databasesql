create table Sales_order_details ( Order_no Varchar(6), Product_no varchar(6), Qty_ordered bigint(8),Qty_disp bigint(8),  Product_rate bigint(8),  foreign key (Order_no) references  Sales_order (ORDERNO),
foreign key (Product_no) references  product_master (productno));


select * from sales_order_details;
insert into Sales_order_details values ('O001', 'P001',  '20',  '18',  '2000' );
insert into Sales_order_details values ('O002', 'P002',  '30',  '28',  '3000' );
insert into Sales_order_details values ('O003', 'P003',  '15',  '12',  '4000' );
insert into Sales_order_details values ('O004', 'P004',  '25',  '20',  '2000' );