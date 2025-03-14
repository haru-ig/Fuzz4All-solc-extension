pragma solidity ^0.8.0;
contract ArrayTest {
	uint256[] public array;

	constructor() {
		array = [1, 3, 2];
		for (uint i = 0; i < array.length; i++) {
			array[i] = i + 2;
		}
	}

	function max() public view returns (uint) {
		uint maximum = array[0];
		for (uint i = 1; i < array.length; i++) {
			if (maximum < array[i]) {
				maximum = array[i];
			}
		}

		emit ArrayMax(maximum);
		return maximum;
	}

	function min() public view returns (uint) {
		uint minimum = array[0];
		for (uint i = 1; i < array.length; i++) {
			if (minimum > array[i]) {
				minimum = array[i];
			}
		}

		emit ArrayMin(minimum);
		return minimum;
	}

	function sum() public view returns (uint) {
		uint sum = 0;
		for (uint i = 0; i < array.length; i++) {
			sum += array[i];
		}
		emit ArraySum(sum);
		return sum;
	}

	event ArrayMax(uint max);
	event ArrayMin(uint min);
	event ArraySum(uint sum);
}

pragma solidity ^0.8.0;
contract MultiAccess {
	uint[4294967295] storage int_storage;
	uint32[4294967293] memory_storage;

	constructor() {
		int_storage = [20, 20];
		memory_storage = [20, 30];
	}

	function access() public view returns (uint128) {
		return int_storage[0];
	}
}

pragma solidity ^0.8.0;
contract SingleStorageContext {
	uint[4294967295] public int_storage;
	uint[4294967295] public int_storage_2;
	uint32[11101183] public memory_storage;
	uint[50] public mem_storage_3;

	struct StorageContextA {
		uint public num;
	}

	constructor() {
		uint[50] memory temp = [10, 20];
		mem
