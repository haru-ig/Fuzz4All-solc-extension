pragma solidity ^0.8.0;
contract isSemanticallyEquivalentToPreviouslyGeneratedWithABICoder is isSemanticallyEquivalentToPreviouslyGeneratedWithoutABICoder {
	constructor() {

	}
	function add(uint number) public pure returns (uint) {
		return number + 1;
	}
}
