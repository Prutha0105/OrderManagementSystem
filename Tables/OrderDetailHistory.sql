CREATE TABLE OrderDetailHistory(
    OrderDetailhistoryId int not null,
	OrderDetailId int not null,
	OrderId int not null,
	ItemId int not null,
	OrderQty numeric(18,2) null,
	Rate numeric(18,2) null,
    operation CHAR(1) NOT NULL,
    CHECK(operation = 'I' or operation='D')
);