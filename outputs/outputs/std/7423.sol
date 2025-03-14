pragma solidity ^0.8.0;
contract MutatedArray {
	uint256[] immutable numbers;
	uint256 public constant SIZE = 10;
	uint256 private _index = 0;
	mapping(address => uint256) private _numbers;
	constructor () {
		numbers = new uint256[](SIZE);
		_numbers[owner] = _index++;
	}
	function get(uint i) public view returns (uint) {
		uint index = _numbers[msg.sender];
		return numbers[index];
	}
	function length() public view returns (uint) {
		return _numbers[msg.sender];
	}
	function set(uint i, uint256 j) public {
		require(i < SIZE);
		numbers[i] = j;
		_numbers[msg.sender] = _index++;
	}
	function sum() public view returns (uint) {
		uint sum = 0;
		uint size = sizes();
		for (uint i = 0; i < size; i++) {
			sum += numbers[i];
		}
		return sum;
	}
	function sizes() public view returns (uint) {
		uint size = _numbers[msg.sender];
		if(size < SIZE) return size.sub(1) + 1;
		return 0;
	}
}

pragma solidity ^0.8.0;
contract MutatedUintArray {
	uint16[] array;
	uint16 public constant SIZE = 10;
	uint16 private _index = 0;
	mapping(address => uint16) private _array;
	constructor () {
		array = new uint16[](SIZE);
		_array[address(0x9)] = 3;
	}
	function get(uint i) public view returns (uint16) {
		return _array[msg.sender];
	}
	function set(uint i, uint16 j) public {
		require(i < SIZE);
		array[i] = j;
		_array[msg.sender] = 0;
	}
	function arraySize() public view returns (uint16) {
		uint16 size = 0;
		for (uint16 i = 0; i < SIZE; ++i) {
			if(array[i]!= 0) {
				size++;
			}
		}
		return size;
	}
	function arraySum() public view returns (uint16) {
		uint16 sum = 0;
		for (uint16 i = 0; i < SIZE; ++i) {
			sum += array[i];
		}
