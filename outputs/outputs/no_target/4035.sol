pragma solidity ^0.8.0;
contract Vulneratr { uint private n = 0; uint x; function f() public {x = (n * 4294967296) + (4294967295 * 4294967295) / 100; n = 257; } }
contract Scorer { uint n = 0; uint x; function f() public { x = (n * 4294967296) + (4294967295 * 4294967295) / 100; n = n+1;} }
