pragma solidity ^0.8.0;
contract Modifications {
   uint256 public a;
   uint a2;
   function Modification(uint256 s, uint256 i) public {
    uint256 x = s * i;
    a = x * s / i;
    a2 = x - uint256(i) * (int256(s) - int256(x));
   }
}
