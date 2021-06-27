create proc spUploadImage
@Name nvarchar(255),
@Size int, 
@ImageData varbinary(max),
@NewID int output
as
begin
	insert into tbleimages
	values(@Name, @Size, @ImageData)

	select @NewID= SCOPE_IDENTITY()
end