pragma solidity ^0.8.0;
contract Modifications{
    uint256 public a;
}
contract Modifications2 is Modifications {
   function Modification2(uint256 s, uint256 i) public Modifications(s, i) {
   }
}
