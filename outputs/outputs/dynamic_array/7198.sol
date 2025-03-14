pragma solidity ^0.8.0;
contract Base {
	constructor() public {}
}


pragma solidity 0.8.11;
contract Modded is Base {
	constructor() {
		string memory b = new bytes(0);
	}

	function getArray(uint8 value) public pure returns (uint8[] memory) {
		return new uint8[](1);
	}
}
