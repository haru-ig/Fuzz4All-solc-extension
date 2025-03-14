pragma solidity ^0.8.0;
import "./Array.sol";
contract ArrayV2 {
	uint i;
	uint[] a;
	Array array;
	constructor(Array memory memory_a) {
		array = memory_a;
		a = memory_a.convertToArray();
	}
	function convertToArray() public pure returns (uint[] memory) {
		uint[] memory array = new uint[](a.length);
		for(uint i = 0; i < a.length; ++i) {
			array[i] = a[i];
		}
		return array;
	}
}
