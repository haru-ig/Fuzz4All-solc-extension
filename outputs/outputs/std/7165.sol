pragma solidity ^0.8.0;
contract BitwiseXOR2 {
	function test() public pure {
		uint a = 0xffff;
		uint b = 0xff00;
		uint c = 0xf00f;
		a ^= b;
	}
}
