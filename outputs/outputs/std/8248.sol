pragma solidity ^0.8.0;
contract Array {
	uint[] public array;
	constructor() {
		array = [25, 8, 62, 9, 4];
	}

	function getSum() public view returns (uint) {
		uint sum = 0;
		uint k = array.length;
		for(uint j=0; j<k;j++ ) {
			sum += array[j];
		}
		return sum;
	}

	function getMin() public view returns (uint) {
		uint min = 30;
		uint k = array.length;
		for(uint j=0; j<k;j++ ) {
			if (array[j] < min) min = array[j];
		}
		return min;
	}

	function getMax_new() public view returns (uint) {
		uint[500] storage_2 = [ 0, 30, 40, 50, 50, 50];
		uint k = array.length;
		uint max = 0;
		for(uint j=0; j<k;j++ ) {
			uint elem = array[j];
			if (elem > max) max = elem;
		}
		return max;
	}
}
