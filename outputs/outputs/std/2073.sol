pragma solidity ^0.8.0;
contract Mutated {
   function func(uint x) public {
      require(3 == 1 + 2);
      Array_equivalent_32Mutated2.set(uint(true), 0x01010101);
   }
}
