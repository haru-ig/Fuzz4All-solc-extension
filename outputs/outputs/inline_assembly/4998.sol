pragma solidity ^0.8.0;
contract bad_internal_asm_3 {
	uint internal counter = 5;
	uint internal counter_2 = 0;
	uint data_public;
	constructor() {
		data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1; data_public += 0;
		counter_2 += 2; counter += 2;
	}
}
contract bad_internal_asm_4 {
	uint internal counter = 0;
