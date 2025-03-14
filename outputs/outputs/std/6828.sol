pragma solidity ^0.8.0;
contract C {
	function test() public pure returns (uint) {
		return 1;
	}
}

pragma solidity ^0.8.0;
contract D {
	address payable public payableAddr;
	uint public c;

	constructor(uint _c) {
		c = _c;
	}

	function test() public pure returns (uint) {
		return c;
	}
}
