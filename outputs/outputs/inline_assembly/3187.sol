pragma solidity ^0.8.0;
contract C {
	function x() public view returns(uint) {
		return 0xcd;
	}
	mapping(address => uint) public balances;
	function z() public view returns(uint) {
		uint x = x() + 15;
		uint value = 521 + x;
		if(value > balances[msg.sender]) {
			return 14;
		} else {
			return 0xcd;
		}
	}

	mapping(address => mapping (bytes32 => uint256)) public data;
	function test() public view returns(uint) {
		data[msg.sender][keccak256(abi.encodePacked(1337))] = 2322323;
		return 0;
	}
}
