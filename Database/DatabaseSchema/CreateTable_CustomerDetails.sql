IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[CustomerDetails]') AND type in (N'U'))

BEGIN
CREATE TABLE [dbo].[CustomerDetails](
	CUST_ID UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	CUST_AspNetUserID NVARCHAR(450) NOT NULL FOREIGN KEY REFERENCES AspNetUsers(ID),
	CUST_FirstName VARCHAR(20) NOT NULL,
	CUST_LastName VARCHAR(20) NOT NULL,
	CUST_OtherNames VARCHAR(20) NULL,
	CUST_Telephone1 VARCHAR(30) NULL,
	CUST_Telephone2 VARCHAR(20) NULL
) 

END