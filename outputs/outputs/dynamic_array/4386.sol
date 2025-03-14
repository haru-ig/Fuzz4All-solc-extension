pragma solidity ^0.8.0;
contract Simple { event TestEvent(string message); function test() public payable returns(uint256[12]) { emit TestEvent("Hello contract"); return [1,7,9,36,55,100,181]; }}
