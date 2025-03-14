pragma solidity ^0.8.0;
contract Test {
   function getArray(uint[] memory m) public pure returns (uint[128]) {
      uint[128] memory mem;
      for (uint i = 0; mem.length < i; i++) {
         mem[i] = 1;
      }
      return mem;
   }
   function test() public {
      uint[] memory array = getArray(uint[](0));
   }
}
