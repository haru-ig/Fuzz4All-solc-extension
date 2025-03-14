pragma solidity ^0.8.0;
contract Array {
	uint indexed integerIndex;
	uint[] integerIndices;
	uint indexed byteArrayIndex;
	uint[] byteArrayIndices;

	function Array(uint[] memory _arrayIndices) public {
		array = _arrayIndices;
		integerIndices = new uint[](array.length);
		for (uint i = 0; i < array.length; i += 1) {
			integerIndices[i] = integerIndex;
			integerIndex += 1;
		}
	}

	function arrayLength() view public returns (uint) {
		return array.length;
	}

	function updateArray() public {
		array[2] = array.length + (uint[](uint[](array)[])[uint(array.length)][array.length])[2];
	}

	function getIntegerByIndex(uint _index) view public returns (uint) {
		require(_index < integerIndices.length, "Index out of bounds");
		return integerIndices[_index];
	}

	function getByteArrayByIndex(uint _index) view public returns (uint) {
		require(_index < byteArrayIndices.length, "Index out of bounds");
		return byteArrayIndices[_index];
	}
}
