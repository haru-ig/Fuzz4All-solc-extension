pragma solidity ^0.8.0;
contract contractor {
	uint internal counter = 0;
	uint8 internal counter_8 = 0;
	constructor() {
		counter_8 += 5; counter_8 += 3; counter += 2;
	}
}
contract no_good_internal_asm {
	uint internal counter = 0;
	uint8 internal counter_8 = 0;
	constructor() {
		counter_8 += 5; counter_8 += 3; counter = 2;
	}
}
contract no_good_user_defined_assembly {
	uint internal counter = 0;
	uint8 internal counter_8 = 0;
