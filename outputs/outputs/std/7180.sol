pragma solidity ^0.8.0;
contract BitwiseXOR2 {
	function test() public pure {
		uint a;
		uint b;
		uint c;
		a=0xffff;
		b=0xff00;
		c=0xfe00;
		a^=b;
		a^=b;
		a^=b;
		a^=c;
		b^=c;
		b^=b;
		b^=a;
	}
}
