pragma solidity ^0.8.0;
contract B { function f(bool test) public pure { unchecked { test = 1 / test; test += test; test /= test>>20; test && test; test--;} } }
