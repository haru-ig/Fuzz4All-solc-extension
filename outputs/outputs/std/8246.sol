pragma solidity ^0.8.0;
contract Memory {
	uint storage[50000];
	uint[50000] storage_2;
	uint i;
	constructor() {
		i = 4411504;
		storage_2 = [ 0, 30, 40, 50, 50, 50];
	}
}
