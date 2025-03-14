pragma solidity ^0.8.0;
contract g {
	uint256 public constant a = 4;
	uint256 data_public;
	constructor() {
		data_public += 5; data_public += 3; data_public += 1; data_public += 5; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1; data_public += 0;
	}
	function get() public view returns(uint256) {
		data_public += 100;
		data_public += a;
		return data_public;
	}
