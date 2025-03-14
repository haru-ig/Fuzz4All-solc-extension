pragma solidity ^0.8.0;
contract BitwiseNot {
	uint a;
	function test() public {
		uint temp = ~a;
		a -= a >> (32 - 31);
	}
}
