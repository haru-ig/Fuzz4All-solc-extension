pragma solidity ^0.8.0;
contract Array {
	struct ArrayInfo {
		uint[] data;
		uint min;
		uint max;
		uint length;
	}
	ArrayInfo public array;
	uint public arrMin;
	uint public arrMax;
	uint public arrLength;
	function add(uint a) public pure returns(uint) {
        return (a + 1);
	}
	function sub(uint a, uint b) public pure returns(uint) {
        return (a - b - 1);
	}
	function max(uint a, uint b) public pure returns(uint) {
        return (a > b? a : b);
	}
	function min(uint a, uint b) public pure returns(uint) {
        return (a < b? a : b);
	}
}
