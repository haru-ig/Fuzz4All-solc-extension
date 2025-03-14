pragma solidity ^0.8.0;
contract bad {
	uint counter = 0;
	uint public data_public;
	constructor() {
		data_public += 1;
		data_public += 1;
		data_public += 5; data_public += 3;
	}
}
