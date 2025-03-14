pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a^=b;
		a^=2**32;
		a=2**32;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
		a=0x0000;
		a^=b;
		a=b;
	}
}
