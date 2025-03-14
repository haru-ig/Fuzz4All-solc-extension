pragma solidity ^0.8.0;
contract BitwiseOR {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a|=b;
		b=0xffff;
		a=0xff00;
		a|=b;
		a=0xffff;
		b=0xff00;
		a=0xff00;
		b|=a;
	}
}
