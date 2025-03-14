pragma solidity ^0.8.0;
contract A {
	contract B {}
	struct C {
		address addr;
		uint256[] data;
	}
	function d(C memory c) public {
		uint256[] storage s = c.data;
	}
}
