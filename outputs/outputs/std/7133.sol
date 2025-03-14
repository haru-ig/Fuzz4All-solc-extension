pragma solidity ^0.8.0;
contract Memory {
	uint public a;
	function test() public {
		uint b = memory.a;
	}
}
