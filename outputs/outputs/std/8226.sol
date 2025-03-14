pragma solidity ^0.8.0;
contract Memory {
	uint[2] private int_storage;
	uint[2] memory_storage;
	constructor() {
		int_storage = [20, 30];
		memory_storage = [20, 30];
	}
}
