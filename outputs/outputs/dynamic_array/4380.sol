pragma solidity ^0.8.0;
event TestEvent(string message);
contract Simple { function test() public payable returns(uint256) { emit TestEvent("Hello contract"); return 1; }}
