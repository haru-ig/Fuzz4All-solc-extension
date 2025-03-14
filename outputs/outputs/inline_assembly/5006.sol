pragma solidity ^0.8.0;
contract good_bad_asm {
	uint internal counter = 0;
	uint internal counter_2 = 5;
	uint data_public;
	constructor() {
		data_public += 1; data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 5; data_public += 5; data_public += 1; data_public += 5; data_public += 1;
	}
}
contract bad_bad_asm {
	uint data_public;
	constructor() {
		data_public += 1
