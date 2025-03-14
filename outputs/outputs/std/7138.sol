pragma solidity ^0.8.0;
contract BitwiseXOR {
	mapping (address => bool) public addresses;
	uint a;
	uint b;
	function test() public {
		a = a + b;
		b = a^b;
		a = b;
	}
}
