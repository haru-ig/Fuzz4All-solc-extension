pragma solidity ^0.8.0;
contract Mutator {
	uint a;
	function test() public {
        a += a;
	}
}
