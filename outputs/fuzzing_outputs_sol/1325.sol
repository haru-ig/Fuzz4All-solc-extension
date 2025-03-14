pragma solidity ^0.8.0;
contract Contract {
   function doNothing() [1] public {
   }
   uint[] public data;
   uint dataLength;
   constructor() public {
       dataLength = 0;
   }
   function data1() public {
       dataLength += 2;
       data.push(1);
   }
   function data2() public {
       data.pop();
   }
}
