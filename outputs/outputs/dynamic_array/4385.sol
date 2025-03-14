pragma solidity ^0.8.0;
event Test(string message);
contract Simple { function test() public payable returns(uint256) { emit Test("Hello contract"); } }
