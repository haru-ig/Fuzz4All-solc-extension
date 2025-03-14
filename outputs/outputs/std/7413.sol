pragma solidity ^0.8.0;
contract MutatedAccount {
	uint number;
	uint public immutable accountNumber;
	uint public initial_number = 1;
	constructor () {
		accountNumber = 0;
	}
	function mutant() public {
		number = initial_number;
	}
}
