pragma solidity ^0.8.0;
contract Account {
	uint number;
	uint public immutable accountNumber;
	uint public number;
	uint public constant INITIAL_NUMBER = 1;
	constructor () {
		accountNumber = 0;
	}
	modifier onlyAccount {
		require(msg.sender == accountNumber, "Only accounts are able to call this function");
		_;
	}
	function mutant1() public onlyAccount {
		number = INITIAL_NUMBER;
	}
}
