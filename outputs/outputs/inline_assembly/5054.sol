pragma solidity ^0.8.0;
contract Good {
	uint public data_public;
	constructor() {
		uint result = data_public += 1;
		result = result + data_public;
		result = result + data_public + 1;
		return result;
	}
}
