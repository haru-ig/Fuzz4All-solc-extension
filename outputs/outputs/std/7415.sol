pragma solidity ^0.8.0;
contract MutatedAccount {
	uint number;
	uint public immutable accountNumber;
	uint public initial_number = 1;
	constructor () {
		accountNumber = accountNumber + initial_number;
	}
}
