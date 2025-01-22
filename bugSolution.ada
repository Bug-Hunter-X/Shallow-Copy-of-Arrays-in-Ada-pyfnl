```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   -- Deep Copy using a loop
   for I in A'Range loop
      B(I) := A(I);
   end loop;
   
   A(1) := 100; -- Modify A
   -- Now B(1) remains 1.
   
   -- Alternative: Dynamic allocation for deep copy
   -- Allocate memory for a new array
   type My_Array_Ptr is access My_Array;
   C : My_Array_Ptr;
   D : My_Array_Ptr;
   C := new My_Array'(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   D := new My_Array;
   --Copy the array
   D.all := C.all; --Deep copy
   C.all(1) := 100;
   --D.all(1) remains 1
   --Remember to deallocate C and D using `C := null; D := null;` at the end when no longer needed
end Example_Solution;
```