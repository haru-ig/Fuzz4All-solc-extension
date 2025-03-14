pragma solidity ^0.8.0;
contract Memory {
	uint224 i;
	uint[4294967295] memory_storage;
	uint[429496729301] int_storage;
	constructor() {
		i = 0;
		int_storage = [20, 20];
		memory_storage = [30, 20];
	}
}
