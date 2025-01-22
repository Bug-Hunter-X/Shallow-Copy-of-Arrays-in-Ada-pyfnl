```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A;
   A(1) := 100; -- Modify A
   -- Expect B(1) to be 1, but it is 100
end Example;
```