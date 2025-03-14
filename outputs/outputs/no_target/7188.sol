pragma solidity ^0.8.0;
contract PreviousGen {
   function gen1(uint) public {}
}
contract PreviousGenGen {
   function gen1(uint) public {
      unchecked {
          x--;
      }
   }
   function gen2() public {
      unchecked {
          x--;
      }
   }
}
contract SemanticEquivalent {
   function gen1(uint) public {}
}
