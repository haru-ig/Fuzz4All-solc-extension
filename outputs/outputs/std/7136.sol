pragma solidity ^0.8.0;
contract BitwiseXOR {
	mapping (address => bool) public addresses1;
	mapping (address => bool) public addresses2;
	uint a;
	uint b;
	address[] public arr;
	function test() public {
		uint temp1 = a^b;
		a = a + b;
		b = a^b;
		uint temp2 = 10;
		uint temp3 = 10;
	}

	function mutant() public payable {
		a = a + b;
		b = a^b;
		uint a1 = 100;
		a1 = a1 + b;
		b = a1^b;
	}
}
