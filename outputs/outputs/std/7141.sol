pragma solidity ^0.8.0;
contract BitwiseXOR {
	mapping (address => bool) public addresses;
	uint8 a;
	uint8 b;
	function test() public {
		a = a << 1;
		a = a | b;
		b = a ^ b;
		a = b;
	}
}
