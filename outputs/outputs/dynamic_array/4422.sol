pragma solidity ^0.8.0;
contract Innocent { function test() public returns (address[] calldata) {
} }
contract MutatedTest { function test() public returns (address[] memory) {
} }
contract InnocentCall { function test() public returns (address[] calldata) {
} }
