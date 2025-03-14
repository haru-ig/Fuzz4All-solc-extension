pragma solidity ^0.8.0;
contract Modifications3{
   uint256 public a;
   uint256 public b;
   function Modification3(uint256 s, uint256 i) public {
    uint256 x = s * i;
    a = x * s / i;
    b = x - x / i;
   }
}
