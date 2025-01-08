CREATE TABLE Product (
    Product-id VARCHAR2(20) Primary Key,
    Product-name VARCHAR2(20) NOT NULL ,
    Price Number check (Price>0)
)

CREATE TABLE Customer(
    Customer-id VARCHAR2(20) Primary Key,
    Customer-name VARCHAR2(20) NOT NULL,
    Customer-Tel NUMBER
)
CREATE TABLE Orders(
    Customer-id VARCHAR2(20) ,
    Product-id VARCHAR2(20) ,
    Quantity NUMBER ,
    Total-amount NUMBER , 
    CONSTRAINT FK_CustomerOrder FOREIGN KEY ( Customer-id) REFERENCES Customer(Customer-id),
    CONSTRAINT FK_ProductOrder FOREIGN KEY ( Product-id) REFERENCES Product(Product-id)

)
ALTER TABLE Orders ADD CONSTRAINT Order-id PRIMARY KEY (Customer-id,Product-id);
ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADDOeder-date DATE DEFAULT = SYSDATE;