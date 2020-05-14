CREATE TABLE `Products` (
  `Product_ID` int,
  `Product_Name` varchar(50),
  `Price` int,
  `Quantity` int,
  `Category` varchar(50),
  KEY `Primary Key` (`Product_ID`),
  KEY `Key` (`Product_Name`, `Price`, `Quantity`, `Category`)
);

CREATE TABLE `Order` (
  `Order_Number` int,
  `Customer_ID` int,
  `Customer_Name` varchar(50),
  `to_Street` varchar(50),
  `to_City` varchar(50),
  `to_Country` varchar(50),
  `to_ZIP` varchar(6),
  `Ship_Date` varchar(30),
  `Product_ID` int,
  KEY `Primary Key` (`Order_Number`),
  KEY `FK` (`Customer_ID`, `Product_ID`),
  KEY `Key` (`Customer_Name`, `to_Street`, `to_City`, `to_Country`, `to_ZIP`, `Ship_Date`)
);

CREATE TABLE `Customer` (
  `Customer_ID` int,
  `First_Name` varchar(50),
  `Second_Name` varchar(50),
  `Country` varchar(50),
  `City` varchar(50),
  `Street` varchar(50),
  `ZIP_Code` varchar(6),
  `Phone_Number` int,
  KEY `Primary Key` (`Customer_ID`),
  KEY `Key` (`First_Name`, `Second_Name`, `Country`, `City`, `Street`, `ZIP_Code`, `Phone_Number`)
);

CREATE TABLE `Cart` (
  `Cart_ID` int,
  `Customer_ID` int,
  `Products_Quantity` int,
  `Total_Price` int,
  KEY `Primary Key` (`Cart_ID`),
  KEY `FK` (`Customer_ID`),
  KEY `Key` (`Products_Quantity`, `Total_Price`)
);

CREATE TABLE `Shipment` (
  `Shipping_ID` int,
  `Product_ID` int,
  `Order_Number` int,
  `Ship_Order_Date` varchar(50),
  KEY `Primary Key` (`Shipping_ID`),
  KEY `FK` (`Product_ID`, `Order_Number`),
  KEY `Key` (`Ship_Order_Date`)
);

CREATE TABLE `Reviews` (
  `Review_ID` int,
  `Customer_ID` int,
  `Product_ID` int,
  `Review` varchar(200),
  `Stars` int,
  KEY `Primary Key` (`Review_ID`),
  KEY `FK` (`Customer_ID`, `Product_ID`),
  KEY `Key` (`Review`, `Stars`)
);

