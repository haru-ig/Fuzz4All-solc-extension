pragma solidity ^0.8.0;
contract good {
	uint internal data = 0;
	constructor() {
		data += 5; data += 2; data += 2; data += 1; data += 3;
		uint internal constant value = 1;
		data += value; data += 1; data += 3; data += 2;
	}
}
contract bad_internal_asm {
	uint data = 0;
	constructor() {
		data += 5; data += 3; data += 1;
		uint internal constant value = 1;
		data += value;
	}
}
contract good_internal_asm {
	uint internal data =
