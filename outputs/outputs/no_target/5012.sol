pragma solidity ^0.8.0;
contract A{ function A(uint256 a) public pure {a = a + 1;} }
contract B{ function B(uint256 a) public pure {a = a - 100;} }
contract C{ function C(uint256 a) public pure {a = a - 1;} }

contract D { function D() public pure {  new A; new B(1000) new C(2000) } }

pragma solidity ^0.8.0;
contract A { function A() public pure { } }
contract B { function B(uint256 a) public pure { assert(0 == a + 2); } }
contract C { function C() public pure {  new B(1000) assert(true); } }
