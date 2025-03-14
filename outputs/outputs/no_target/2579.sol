pragma solidity ^0.8.0;
contract semanticsolidity0822c { function f() public pure { uint x = 0; x += x; } }

pragma solidity ^0.8.0;
contract semanticsolidity0822d { uint256 public count; uint8 public abyte; function f() public { count++; abyte++; } }
contract semanticsolidity0822e { uint256 public count; uint16 public b; uint8 public abyte; function f() public { count++; abyte += b; } }
contract semanticsolidity0822f { uint256 public count; uint private c; uint8 public abyte; function g() public { count++; abyte += c; } }
contract semanticsolidity0822g { uint256 public count; uint public d; uint8 public abyte; function g() public { count++; abyte += d; } }
contract semanticsolidity0822h { uint256 public count; uint public e; uint8 public abyte; function h() public { count++; abyte += e; } }
contract semanticsolidity0822i { uint256 public count; uint public f; uint8 public abyte; function i() public { count++; abyte += f; } }
