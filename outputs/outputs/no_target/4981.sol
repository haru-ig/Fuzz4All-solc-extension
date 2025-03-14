pragma solidity ^0.8.0;
contract A { function f() public view { } }
contract BC { function f(uint256 x, uint256 y) public view {y += 1 ;} }
contract BC2 { function f(uint256 a, uint256 b) public view { return b + uint256(a); } }
contract CB { function f(uint256 x) public view { } }
contract BC3 { function f(uint256 a) public view {a += 2;} }
contract CC { function f(uint256 a) public view {a += uint256(a);} }
contract CCC { function f(uint256 a) public view {a += a;} }
contract CC_noabi { function f(uint256 a) public view {a += a;} }
