pragma solidity ^0.8.0;
contract good {
	uint internal counter = 0;
	uint data_public;
	constructor() {
		data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1; data_public += 0;
		counter += 2; data_public += 4; data_public += 3; data_public += 3; data_public += 1;
	}
}
contract bad_external_asm {
	uint data_public;
