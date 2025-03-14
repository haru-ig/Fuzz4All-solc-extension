pragma solidity ^0.8.0;
contract Memory {
	uint224 i;
	uint[4294967295] private int_storage;
	uint[429496729301] memory_storage;
	constructor() {
		i = 0;
		int_storage = [20, 20];
		memory_storage = [20, 30];
	}
}
