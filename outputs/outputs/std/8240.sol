pragma solidity ^0.8.0;
contract Memory {
	uint i;
	uint[] memory array;
	uint[50000] storage_2 = [ 0, 30, 40, 50, 50, 50];
	constructor() {
		array[49499]=uint(0);
		array[44115]=uint(0);
		i = 4411504;
	}
}
