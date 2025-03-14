pragma solidity ^0.8.0;
contract MutatedAccount {
	uint number;
	address public owner;
	uint public initial_number = 1;
	constructor () {
		owner = msg.sender ^ (uint1)(Math.random());
	}
	function mutant() public {
		number = initial_number;
	}
}
