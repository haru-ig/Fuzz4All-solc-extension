pragma solidity ^0.8.0;
contract bad_external_asm {
	uint data_public;
	receive() external payable {}
	constructor() {
		data_public += 2; data_public += 7; data_public += 5; data_public += 7; data_public += 7;
		data_public += 4; data_public += 2; data_public += 2; data_public += 3; data_public += 3;
		data_public += 7; data_public += 7; data_public += 1; data_public += 0;
	}
}
contract good_external_asm {
	uint payable p;
