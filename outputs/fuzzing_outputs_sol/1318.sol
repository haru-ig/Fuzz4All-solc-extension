pragma solidity ^0.8.0;
contract Contract {
   function doNothing() public {

   }
   uint[] public data;
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
   }

   function data2() public {
       require(data.length >= 2, "Nothing!");
       data.push(2);
   }
}
