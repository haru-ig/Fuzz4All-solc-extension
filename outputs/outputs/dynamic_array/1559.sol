pragma solidity ^0.8.0;
contract ComplexDynamicArrayV3 {
	address payable[] public arrayAddresses;
	uint[] public nums;
	event NewArrayElement(address adr);

	function MutateArray() public {
		for (uint i = 0; i < 10; i++) {
			arrayAddresses.push(address(uint160(i)));
		}
		nums.length = 15;
	}

	function getArrayAddresses(uint256 i) public view returns (address) {
		require(arrayAddresses.length > 0, "Dynamic array can't be empty!");
		return arrayAddresses[i];
	}

	function getNum(uint256 i) public view returns (uint) {
		require(nums.length > 0, "Dynamic array can't be empty!");
		return nums[i];
	}

	function GetLength(uint256 i) public view returns (uint256) {
		if (arrayAddresses.length > 0) {
			return uint256(arrayAddresses.length - 1);
		}
		return uint256(nums.length - 1);
	}

	function GetArrayLength() public view returns (uint256) {
		if (arrayAddresses.length > 0) {
			return arrayAddresses.length;
		}
		return nums.length;
	}

	function SetArray(uint256 i, address val) public {
		require(arrayAddresses.length > 0, "Array can't be empty!");
		require(i < arrayAddresses.length, "Index out of range!");
		arrayAddresses[i] = val;
	}

	function SetNum(uint256 i, uint val) public {
		require(nums.length > 0, "Dynamic array can't be empty!");
		require(i < nums.length, "Index out of range!");
		nums[i] = val;
		emit NewArrayElement(arrayAddresses[i]);
	}

	function DeleteArray() public {
		require(arrayAddresses.length > 0, "Array can't be empty!");
		require(arrayAddresses.length > 0, "Array can't be empty!");
		emit NewArrayElement(arrayAddresses[arrayAddresses.length - 1]);
		arrayAddresses.pop();
	}
}
