pragma solidity ^0.8.0;
contract bad_data_state_asm {
	uint data_public;
	uint counter = 3;
	constructor(uint _x) {
		data_public += _x;
	}
	function test() public view returns (uint y) {
		y = data_public;
		y = 200;
		y = 100;
		y = data_public + counter;
		data_public = 0;
		y;
	}
}
