pragma solidity ^0.8.0;
contract Multiprecision {
   uint public f1 = 0;
   uint8 public f2 = 100;
   uint[] public fs = new uint[](2);
   function func(uint f3, uint8 f4) public {
       f1 += f3;
       f2 += f4;
       fs = new uint[](3);
       fs[0] = f3;
       fs[1] = f4;
       fs[2] = f3 + f4;
   }
}
