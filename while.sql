declare @contador int

set @contador =1;

while (@contador < 10)
begin
  
  print @contador

  set @contador=@contador +1
  end