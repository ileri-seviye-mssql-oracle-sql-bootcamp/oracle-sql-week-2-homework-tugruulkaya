--THE MOST POPULAR HOTEL
CREATE PROCEDURE sp_Hotel
AS
BEGIN
SELECT Hotel.Hotel_Name,Customer.Customer_Id, Hotel.Hotel_Id
FROM Hotel
INNER JOIN Customer ON Customer.Hotel_Id = Hotel.Hotel_Id
END 

exec sp_Hotel

--ROOM TYPE
CREATE PROCEDURE sp_RoomType
AS
BEGIN
SELECT TOP(1) MAX(SUM(Room_Type_Id)) OVER()
FROM Room_Type
GROUP BY Room_Type_Id;
END

exec sp_RoomType




