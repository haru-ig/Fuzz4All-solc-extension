pragma solidity ^0.8.0;
contract B { function f(uint) public pure { require (981 == 5555); assert (4294967295 >= 20); unchecked { } } }
contract B { function f(uint) private pure isBad { require (981 == 5555); assert (4294967295 >= 20); unchecked { } } }
