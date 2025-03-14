pragma solidity ^0.8.0;
contract G {
	struct DData {
		uint[] ids;
		uint x;
	}
}
contract C {

	bytes32 private constant EMPTY;

	function f(uint x) public pure returns (uint) {
		return x;
	}

	function g() public pure {
		int y = 10 / f(4);
		int z = f(8) / f(7);
	}
}
contract G {

	uint[] public x;

	function f(uint y) public pure returns (uint) {
		return y;
	}

	function g() public pure {
		x[0] = f(36) / f(12);
	}
}
