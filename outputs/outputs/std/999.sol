pragma solidity ^0.8.0;
contract ArrayMut2
{
	uint[] memory array1;
	uint[] memory array2;

	function initialize() public {
		array1 = new uint[](6);
	}
}
