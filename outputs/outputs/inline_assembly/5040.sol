pragma solidity ^0.8.0;
contract bad_semantic {
	uint public data_public = 0;
	constructor() {
		data_public += 1;
		data_public += 5;
		data_public += 3;
	}
}
