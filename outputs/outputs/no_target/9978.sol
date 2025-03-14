pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGenerated {
	uint public sum;
	uint public numberToAdd;
	function setNumberToAdd(uint _value) public {
		numberToAdd = _value;
		sum = add(numberToAdd);
	}
	function add(uint numberToAdd) public pure returns (uint) {
		uint numberToAdd = numberToAdd + 1;
		sum = sum + numberToAdd;
		return sum;
	}
}
