pragma solidity ^0.8.0;
contract C {
	function x() public returns(uint) {
		return 0xcd;
	}

	mapping(address => bool) public balances;

	function payBalance(mapping(address => bool) storage balances) public payable returns(uint) {
		balances.call{value: msg.value}();
		return 0xcd;
	}
}
