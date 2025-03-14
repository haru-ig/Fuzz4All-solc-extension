pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test1() public pure {
		uint a = 100;
		uint b = 0xffff4444;
		a^=b;
		a=b;
	}
}
