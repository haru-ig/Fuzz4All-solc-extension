pragma solidity ^0.8.0;
contract MutatedSetUint
{
	uint256 _value;
	uint256[] private _storage;
}
contract MutatedSetMemoryUint
{
	uint256 _value;
	uint256[] private _storage;
}
contract MutatedSetMemoryUintWithStorage
{
	uint256 _value;
	uint256[] private _storage;
}
contract UnusedUint
{
	uint256 _unused;
}
contract UnusedMemory
{
	uint256 _unused;
	uint256[] internal _storage;
}
contract MutatedUnusedMemory
{
	uint256 _unused;
	uint256[] private _storage;
}
contract MutatedUnusedMemoryWithStorage
{
	uint256 _unused;
	uint256[] private _storage;
}
contract MutatedUnusedUintWithStorage
{
	uint256 _unused;
	uint256[] private _storage;
}
contract ArrayUint {
	struct Array {
		uint256 len;
		uint256 arr256[5];
	}

	constructor() {   }

	function addValue1(uint256 value) public {   }
	function addValue2() public {   }
	function addArray1(Array memory storage arrayToAdd) public {   }
	function addArray5(Array memory array2) public {   }
	function subValue(uint256 value) public {   }
	function subArray(uint256 value) public {   }
	function subArray5(Array memory array) public {   }
	function mulValue(uint256 value) public {   }
	function mulArray1(Array memory array) public {   }
	function divValue(uint256 value) public {   }
	function divArray1(Array memory array) public {   }
	function length() public view returns (uint256) {   }
	function length5() public view returns (uint256) {   }
	function get(uint256 index) public view returns (uint256) {   }
	function set(uint256 index, uint256 newValue)
