pragma solidity ^0.8.0;
contract IToken { bytes32 constant public A; constructor() { A = 1; emit A(); } function testContract() public view { assert(A == _msgSender()); } subr() public pure returns (uint) { return 42; } function test() public view returns (uint){ return testContract(); } function _test() public { test(); } function _test2() internal returns (uint256){ _test(); return _test(); } }
