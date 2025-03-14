pragma solidity ^0.8.0;
contract BitwiseXOR {
	mapping (address => bool) public addresses;
	uint a;
	uint b;
	address[] public arr;
	function test() public {
		uint temp = a^b;
		a = a + b;
		b = a^b;
	}
}
