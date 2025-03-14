pragma solidity ^0.8.0;
contract Gas {
	uint x;
	function test() public pure {
		x = 0x1fffffffffffff * 99;
	}
}
