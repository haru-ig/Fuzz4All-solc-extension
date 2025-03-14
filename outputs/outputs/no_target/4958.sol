pragma solidity ^0.8.0;
contract A { bool f() public pure {assert(true);}  }
contract B { function f() public pure {return false;} }
contract ABC { function g(uint256 a) public pure {a += 2;} }
contract ABCDE { function f(uint256 a, uint256 b, uint256 c, uint256 d) public pure {a += 456;} }
contract ABCDEDF { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public pure {a = a^0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF;} }
contract ABCDEF { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e, uint256 f) public pure {a = a + 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;} }
contract ABCDEDFG { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e, uint256 f, uint256 g) public pure { a = a; } }
contract ABCDEDFGHK { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e, uint256 f, uint256 g, uint256 h) public pure {} }
contract ABCDEDFGHIJ { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e, uint256 f, uint256 g, uint256 h, uint256 i) public pure {} }
contract ABCDEFGHIJJ { function f(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e, uint256 f, uint256 g, uint256 h, uint256 i, uint256 j) public pure {} }
contract ABCDEFGHIJKLMNO { function
