pragma solidity ^0.8.0;
contract good_nested_asm {
	uint x = 0;
	uint y = 0;
	uint z = x;

	constructor() {
		uint x = 1;
		uint y = 2;
		uint z = 3;
		y = 4;
		z = 5;
		z = 6;
		y = 7;
	}
}
contract bad_nested_asm {
	uint x = 0;
	uint y = 0;
	uint z = x;

	constructor() {
		uint x = x + 1;
		uint y = y + 1;
		uint z
