pragma solidity ^0.8.0;
contract BitwiseOR {
	uint a;
	uint b;
	function test() public {
		uint temp = a|b;
		a = a + b;
		b = a&b;
	}
}

contract BitwiseXOR {
	uint a;
	uint b;
	function test() public {
		uint temp = a^b;
		a = a + b;
		b = a|b;
	}
}
