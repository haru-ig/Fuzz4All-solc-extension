pragma solidity ^0.8.0;
contract BitwiseXORX {
	uint a, b;
	function test() public {

        a = a ^ a;
        b = b ^ b;
		b = a & b;
	}
}
