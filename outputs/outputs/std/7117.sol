pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint a;
	uint b;
	function test() public {
		uint temp = a^b;
		a = a << (32 - 24);
		b = a^b;
	}
}
