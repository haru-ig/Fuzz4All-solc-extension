pragma solidity ^0.8.0;
contract BitwiseXOR2{
	function test() public pure {
		uint a = 100;
		uint b = 200;
		a^=b;
		a===~(a^b);
	}
}
