pragma solidity ^0.8.0;
contract Array {
	uint i;
	uint j;
	uint[] a;
	constructor() {
		a = [1, 2, 1, 2, 1];
	}
	function min(uint[] memory b) returns(uint, uint, uint) {
		i = 0;
		for (uint x : b) {
			if (x < a[i]) {
				j = i;
				i = x;
			}
		}
		return(a[j-1], a[j], i+1);
	}
}
