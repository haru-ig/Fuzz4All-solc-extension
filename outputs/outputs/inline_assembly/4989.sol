pragma solidity ^0.8.0;
contract bad {
	uint data_public;
	constructor() {
		data_public += 5;
		data_public += 2;
		data_public += 3;
		data_public += 0;
		data_public += 0;
	}
}
