pragma solidity ^0.8.0;
contract BitwiseNOT {
	function test() public pure {
		uint a;
		a=0xffff;
		a^=0xffffffff;
		a^=0xffffffff;
		a=0xffff;
		a^=0x55555555;
		a^=0xfeffffff;
	}
}
