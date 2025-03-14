pragma solidity ^0.8.0;
contract MutatedAccount {
	uint number;
	uint public immutable accountNumber;
	constructor () {
		accountNumber = 0;
	}
	modifier add(uint x) {
		number += x;
		_;
	}
	function add(uint x) public pure add(x) {   }
}
