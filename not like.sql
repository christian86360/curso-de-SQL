select * from libros


/*
not like--->negacion

*/
                               --buscar los libros que tengan esa palabre
select * from libros where nombre like '%de%';
                            --busca los elementos que no tengan esa palabre
select * from libros where  nombre not like '%de%';
--buscar los libros que empiezen con la palabra el
select * from libros where nombre like '%el%';
--buscar con los que terminen
select * from libros where nombre like '%da';
--para cuando no sabes como escribir una palabra
select * from libros where nombre like '%la ma_ia de las matematicas%';