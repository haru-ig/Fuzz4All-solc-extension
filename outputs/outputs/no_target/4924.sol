pragma solidity ^0.8.0;
contract C2 { function f(uint) public pure { require (4294967295 >= 20); } }
contract C2 { function f(uint) public pure { require ((5555 == 981) | (5555 <= 981)); } }
contract C2 { function f(uint) public pure { unchecked { require (981 == 5555); } unchecked { assert ((981 == 981)); } } }
contract C2 { function f(uint) public pure { unchecked { require (5555 == 981); } unchecked { assert (4294967295 <= 4294967295); } } }
contract C2 { function f(uint) public pure { unchecked { assert ((5555 == 981) | (981 <= 5555)); } unchecked { assert (5555 >= 5555); } } }
contract C2 { function f(uint) public pure { unchecked { assert ((5555 <= 981) | (981 >= 5555)); } unchecked { assert ((5555 >= 981)); } } }
contract C2 { function f(uint) public pure { unchecked { uint[30] memory m ; uint[30] memory n; n[0] =  : 0; } unchecked { assert (981 == 981); } } }
contract C2 { function f(uint) public pure { unchecked { m[0] = 1; } unchecked { assert (981 == 981); } } }
contract C2 { function f(uint) public pure { unchecked { m[0] = (memorySize <= 168)?1:16; } unchecked { assert (981 == 981); } } }
