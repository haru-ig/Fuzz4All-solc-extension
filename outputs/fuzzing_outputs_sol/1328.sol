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
       data.push(2);
   }
   function data2() public {
       require(data.length >= 2, "Nothing!");
       data.pop();
   }
   function data3() public {
       uint[2] memory tmp = data;
   }
}
