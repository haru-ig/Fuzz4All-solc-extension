pragma solidity ^0.8.0;
contract Mutate60_Semantics {

	uint min;
	uint max;
	uint constant MIN_NON_NEGATIVE_INT = 0;
	uint constant MIN_NEGATIVE_INT = 2**255;
	uint constant MIN_ZERO = 0;
	uint constant MIN_POSITIVE_INT = 1;

	constructor(uint _min, uint _max) {
		min = _min;
		max = _max;
	}

	function setMax(uint _max) public {
		require(_max >= min, 11110);
		max = _max;
	}

	function getMax() public view returns (uint) {
		return max;
	}
}
