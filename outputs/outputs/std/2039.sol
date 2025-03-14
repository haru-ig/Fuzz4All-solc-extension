pragma solidity ^0.8.0;
contract Array_equivalent_64_mutated {
   uint[64] private array;
   function get(uint i) public view returns (uint) {return array[i);}
   function set(uint i, uint x) public pure {array[i]=x;}
   function sum() public pure returns (uint) {  uint result = 0; for (uint i = 0; i < array.length; i++) {result += array[i];}return result;}
   function multMax(uint x, uint y) public pure returns (uint) {return (x*y>=2**(64*2))?x:y;}
   function max(uint x, uint y) public pure returns (uint) {return (x>y)?x:y;}
}
