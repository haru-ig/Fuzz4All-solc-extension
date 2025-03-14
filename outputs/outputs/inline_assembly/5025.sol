pragma solidity ^0.8.0;
contract good {
	uint internal data_public;
	uint data;
	constructor() {
		data = 5;
		data += 2;
		data += 3;
		data += 0;
		data += 0;
	}
}
contract bad_internal_asm {
	uint data;
	constructor() {
		data += 5;
		data += 3;
		data += 1;
		data += 5;
		data += 1;
	}
}
contract good_internal_asm {
	uint internal data;
	uint internal counter;
	uint data_public;
	constructor() {
