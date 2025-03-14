pragma solidity ^0.8.0;
contract good {
	uint public data_public;
	constructor() {
		uint data_local;
	}
}
contract good_constructor {
	uint internal counter = 0;
	uint public data_public;
	constructor() {
		data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3; data_public += data_public++; data_public += 0;
	}
}
contract good_for_range {
	uint public data_public =
