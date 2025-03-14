pragma solidity ^0.8.0;
contract BitwiseXORX_2 {
	uint a;
	uint256 b;
	function test() public{
        a = a ^ a;
        b = (uint)a * a;
	}
}
