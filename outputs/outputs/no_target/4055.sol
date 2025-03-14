pragma solidity ^0.8.0;
contract S1 { uint public s1; function f(uint x) public pure { s1 *= x; } }

pragma solidity ^0.8.0;
contract S2 { uint public s2; function f(uint x) public { s2 *= x; } }
