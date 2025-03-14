pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGenerated {
	address public lastSender;
	bytes32 public previousGeneration;
	function setLastSender(address _value) public {
		lastSender = _value;
		previousGeneration = keccak256(abi.encode(lastSender));
	}
}
