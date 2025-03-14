pragma solidity ^0.8.0;
contract Contract {
   function doNothing() public {
   }
   uint[] public data;
   uint constant NUM = 3;
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
   }
   function data2() public {
       require(data.length >= NUM, "Nothing!");
       data.pop();
   }
}
