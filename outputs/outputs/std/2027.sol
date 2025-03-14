pragma solidity ^0.8.0;
contract Array_equivalent_65535 {
   function add(uint x, uint y) public pure returns (uint) {return (x+y)%65535;}
   function max(uint x, uint y) public pure returns (uint) {return (x>y)?x:y;}
}
