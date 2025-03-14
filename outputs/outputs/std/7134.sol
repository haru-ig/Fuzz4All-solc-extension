pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public {
		uint temp = a^b;
		a = a + b;
		b = a^b;
	}
}
