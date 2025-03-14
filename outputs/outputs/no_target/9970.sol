pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGeneratedWithoutABICoder {
	address public lastSender;
	function setLastSender(address _value) public {
		lastSender = _value;
	}
	function add(uint number) public pure returns (uint) {
		return number + 1;
	}
}
