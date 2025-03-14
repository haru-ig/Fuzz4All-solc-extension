pragma solidity ^0.8.0;
contract BitwiseAND {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a&=b;
		b=0xffff;
		a=0xff00;
		b=0xff00;
		a=0xffff;
		a&=b;
		a=0xfe00;
		a&=b;
		a=0xffff;
	}
}
