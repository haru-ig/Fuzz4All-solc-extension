pragma solidity ^0.8.0;
contract MutatedMethod {
	uint number;
	address public owner;
	uint public initial_number = 1;
	constructor () {
		owner = msg.sender;
	}
	function mutant() public {
		number();
	}
}
