pragma solidity ^0.8.0;
contract semanticsolidity0822d { function g() public pure { uint x = 0; (x, uint); }}


contract semanticsolidity0822e { function g() public pure { uint x = 0;  uint y = (uint(x)); }}

contract semanticsolidity0822f { function g() public pure { uint x = 0;  uint y = (uint(1 + (x <= 0))); }}

contract semanticsolidity0823g { function g() public pure { uint x = 0; (uint(x) + 1); }}
contract semanticsolidity0823h { function g() public pure { (uint(0) + 1); }}
