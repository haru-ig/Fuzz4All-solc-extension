pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGeneratedWithABICoder {
	address public lastSender;
	constructor() public {
		lastSender = msg.sender;
	}
	function setLastSender(address _value) public {
		lastSender = _value;
	}
	function(address _from, uint number) public pure returns(uint) {
		return number + 1;
	}
}
