pragma solidity ^0.8.0;
contract Array_equivalent_32 {
   function add(uint x, uint y) public pure returns (uint) {return (x+y)%32;}
   function max(uint x, uint y) public pure returns (uint) {return (x>y)?x:y;}
}
