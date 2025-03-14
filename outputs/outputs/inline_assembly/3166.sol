pragma solidity ^0.8.0;
contract C {
	function f() public pure returns (uint) {
		return 15;
	}
	mapping (uint => bytes) public balances;
	uint public i = 15;
}
