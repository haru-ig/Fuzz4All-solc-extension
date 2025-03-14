pragma solidity ^0.8.0;
contract good {
	uint internal counter = 0;
	uint public data_private;
	constructor() {
		data_private += 5; data_private += 3; data_private += 1; data_private += 5; data_private += 1;
		data_private += 4; data_private += 3; data_private += 3; data_private += 1; data_private += 0; counter += 2;
		data_private += 4; data_private += 3; data_private += 3; data_private += 1;
	}
}
contract bad_internal_asm {
	uint public data_
