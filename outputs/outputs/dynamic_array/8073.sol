pragma solidity ^0.8.0;
contract Test54Mutant {
   uint[11] m= new uint[11]{0, 2, 3, 4, 5, 6, 8, 9, 10, 11};
   function f() public {
      m[9]=222;
   }
}
