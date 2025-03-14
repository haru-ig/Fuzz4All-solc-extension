pragma solidity ^0.8.0;
contract Array {
	uint[] memory a;
	uint public initial_number = 1;
	uint public max_size = 5;
	constructor () {

		a.push(initial_number);
	}
	function set(uint index, uint value) public {
		require(index < max_size);
		a[index] = value;
	}
	function get(uint index) public view returns (uint) {
		require(index < max_size);
		return a[index];
	}
	function sum() public view returns (uint) {
		uint sum = 0;
		for (uint i = 0; i < max_size; i++) {
			sum += a[i];
		}
		return sum;
	}
	function remove(uint value) public {
		for (uint i = 0; i < max_size; i++) {
			if (a[i] == value) {
				delete a[i];
				uint remove_index = i;
				break;
			}
		}
	}
	function insert(uint value) public {
		uint length = max_size;
		a.push(initial_number);
		while (index < length) {
			uint x = a[index];
			a[index+1] = x;
			index++;
		}
		a.push(value);
		index++;
	}
	function findMin(uint value) public view returns (uint) {
		uint min = initial_number;
		uint min_index = initial_number;
		for (uint i = 0; i < max_size; i++) {
			if (a[i] < value) {
				min = a[i];
				min_index = i;
			}
		}
		return min_index;
	}
	function findMax(uint value) public view returns (uint) {
		uint max = initial_number;
		uint max_index = initial_number;
		for (uint i = 0; i < max_size; i++) {
			if (a[i] > value) {
				max = a[i];
				max_index = i;
			}
		}
		return max_index;
	}
}
