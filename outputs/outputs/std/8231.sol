pragma solidity ^0.8.0;
contract Multiprecision {
	uint[2] public int_storage;
	uint[2] public memory_storage;
	uint[2] private int_storage1;
	uint[2] public memory_storage1;
	constructor() {
		int_storage = [20, 30];
		int_storage1 = [20, 30];
		memory_storage = [20, 30];
		memory_storage1 = [20, 30];
	}
}
