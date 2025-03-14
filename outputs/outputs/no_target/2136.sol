pragma solidity ^0.8.0;
contract Modifications3_SEM{
   uint256 public a;
   uint256 public b;
   function Modification3_SEM(uint256 s, uint256 i) public {
    uint256 x = s * i;
    a = x / i;
    b = x - x / i;
   }
}
