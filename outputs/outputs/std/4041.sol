pragma solidity ^0.8.0;
contract Array {
   uint[] public array1;
   function func(uint constant e1, uint constant e2) public {
       array1[0] = e1;
       array1[1] = e2;
   }
}
