alter proc spGetImageByID
@Id int
as
begin
select ImageData from tblimages where Id=@id
end


delete  tblimages

select * from tblimages