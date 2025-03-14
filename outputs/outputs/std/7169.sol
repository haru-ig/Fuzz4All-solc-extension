pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint a;
	uint b;
	function test() public pure {
		a=0xffff;
		b=0xbaddadadadad;
		a^=b;
		a=0xff00;
		b=0xdeadadadadad;
		a^=b;
		a=0x00ff0000;
		b=0xbaddadadadad;
		a^=b;
		a=0x00ff0000;
	}
}
