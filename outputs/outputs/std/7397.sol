pragma solidity ^0.8.0;

contract MutatedAccount {
    	uint number;
    	uint public immutable accountNumber;

    	constructor () {
    		accountNumber = 1;
    	}
}
