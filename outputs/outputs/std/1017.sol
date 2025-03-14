pragma solidity ^0.8.0;

import "./ArrayMut2.sol";
contract ArrayMut
{
	uint[] array;
	uint32[] array2 = memoryStore;
	uint[] memory array3 = new uint[](10);
	uint256[] array4;
	function getByteSize(uint8[] memory input) public pure returns(bytes32)
	{
		uint len = input.length;
		for(uint i = 0; i < len; i++)
        {
            return uint256(input[i]);
        }
    }
	function newArray(uint _value) public returns(uint256)
	{
		array.push(_value);
		return uint256(array.length);
	}
	function getFirstFromUint256Array(uint256 _value) public pure returns(uint256)
	{
		uint256[] memory array5 = new uint256[](1);
		array5[0] = _value;
		return array5[0];
	}
	function setFirstFromUint256Array(uint256 _value, uint256[] memory output) public returns(bool)
	{
		output[0] = _value;
		return true;
	}
	function checkFirstInUint256Array(uint256[] memory array5, uint256 _value) public pure returns(bool)
	{
		return (array5[0] == _value);
	}
	function getFirstFromUintArray(uint[] memory array5) public pure returns(uint)
	{
		uint[] memory result = new uint[](1);
		result[0] = array5[0];
		return array5[0];
	}
}


pragma solidity ^0.8.0;

import "./ArrayMut.sol";
contract ArrayMut2
{
	uint256 count = 0;
	function getMax(uint256 _a, uint256 _b, uint256 _c) public pure returns(uint256 _a2, uint256 _b2)
	{
		_a2 = _a;
		_b2 = _b;
		count++;
		count+=_a;
    }
}
