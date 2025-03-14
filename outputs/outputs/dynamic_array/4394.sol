pragma solidity ^0.8.0;
contract NoNested { event Miss(uint256 id, uint256 value); uint256 a(uint256 id, uint256 value); function f() public returns(uint256) { emit Miss(a(),0x0); return 0x0; } }
