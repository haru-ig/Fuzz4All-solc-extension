pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGeneratedWithABICoder {
	constructor() public {}
	function f(address receiver) public pure returns (uint) {
		iInterface(receiver).add(1);
		return 1;
	}
}
