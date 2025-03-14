pragma solidity ^0.8.0;
contract Array_equivalent_64_mutator {
   function add(uint x, uint y) public pure returns (uint) {x = add(x, y); return x;}
   function max(uint x, uint y) public pure returns (uint) {x = max(x, y); return x;}
   uint value;
   function initialize() public {value = x+y;}
   function getAddResult() public returns (uint) {return add(value, 1);}
   function getMaxResult() public returns (uint) {return max(value, 1);}
}
