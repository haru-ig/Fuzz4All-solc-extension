pragma solidity ^0.8.0;
contract A {
   bool public x = true;
   uint public y;
   mapping (uint=>bool) ymap
   function setInMap(uint v) public {
      ymap[v] = false;
   }
   function getOut(uint v) public returns(uint){
      (uint i, bool x, uint s, uint) z = ymap[v];
      return x + s;
   }
}
