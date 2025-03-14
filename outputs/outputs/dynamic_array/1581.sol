pragma solidity ^0.8.0;
contract MutatedDynamicArrays1 {
   bytes1[] public data;
   MutatedDynamicArrays2 storage var0;
   bytes1[] memory var1;

   uint[] memory var2;
   uint[] public var3;
   uint public var4; /* This is the main use case of dynamic arrays. It is commonly used for setting a variable with a maximum amount of space.

It can be thought of as a variable storage array that allows storing, for each element of the array, the maximum available amount of space for that element (and all elements in the array).

When using "var5", one may first declare a variable "var5" with the "var6" type. Next, one should fill the array with new values using the function "put" with the 32-bit quantity 23. Finally, one must call the function "get" to retrieve a
