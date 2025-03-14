pragma solidity ^0.8.0;
contract ABC { function A(uint256 a) public pure {a += 2;} }
contract DEF { function D(uint256 a) public pure {a -= 2;} }
contract ACD { function C(uint256 a) public pure {a -= 2;} }
contract ADG5 { function D(uint256 a) public pure {a = 1000000; } }
contract DCL { function C(uint256 a) public pure {a = 1000000; } }
contract ACDG6 {
   function D(uint256 a) public pure {a = 1000000; }
}
contract CCG7 {
   function G(uint256 a) public pure {a = 1000000; }
}
uint256 constant FOO = 33;
