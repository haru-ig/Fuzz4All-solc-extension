pragma solidity ^0.8.0;
contract ArrayFunctions {
	function append(uint[] memory original, uint value) public pure returns (uint[] memory) {

		for(uint i; i < original.length; i++) {
			if(original[i] == value)
				return (uint[] memory(original));
		}
		return (append(uint[original.length + 1] memory(original), value));
	}
}
