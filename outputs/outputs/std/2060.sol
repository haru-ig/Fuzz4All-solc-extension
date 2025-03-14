pragma solidity ^0.8.0;
contract Array_equivalent_32MutatedMutator {
   uint x;
   function init(uint _x) public pure { x = _x; }
   function setMutated(uint _x) public pure {
     require(_x >= x); x = _x;
   }
 }
contract Array_equivalent_32MutatedMutatorMutated {
   uint x;
   uint u;
   function init(uint a, uint _x) public pure { x = _x; u = a; }
   function setMutated(uint _x) public pure {
     require(u >= a); x = _x;
   }
 }
