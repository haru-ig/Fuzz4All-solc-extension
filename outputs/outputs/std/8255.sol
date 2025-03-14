pragma solidity ^0.8.0;
contract Array {
	uint[50] a;
	uint min;
	uint max;
	uint sum;
	uint arrSize;
	constructor() {
		min = 0; max = 0; arrSize = 0;
		for(uint i = 0; i < 50; i++ ) {
			a[i] = 20*i;
		}
	}
}
