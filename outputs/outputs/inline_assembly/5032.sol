pragma solidity ^0.8.0;
contract bad{
	uint internal counter = 0;
	uint data_public;
	constructor() {
		data_public += 5; data_public += 7; data_public += 1; data_public += 5; data_public += 1;
		data_public += 10; data_public += 5; data_public += 3; data_public += 2; data_public += 0; data_public += 9; data_public += 6; data_public += 2; data_public += 2;
		counter += 2; data_public += 4; data_public += 3; data_public += 3; data_public += 1;
	}
}
