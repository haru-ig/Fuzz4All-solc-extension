pragma solidity ^0.8.0;
contract good_internal_asm_not2 {
	uint internal counter = 0;
	uint data_public;
	constructor() {
		counter += 2; data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1; data_public += 0;
		counter += 2; data_public += 4; data_public += 3; data_public += 3; data_public += 1;
		counter += 2; data
