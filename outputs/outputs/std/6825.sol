pragma solidity ^0.8.0;
contract C {
	constructor(uint x) {
		x;
	}
	function test() public pure returns (uint) {
		return 0 - x;
	}
}

pragma solidity ^0.8.0;
contract C {
	constructor(uint x) {
		x;
	}
	function test() public pure returns (uint) {
		return 1 + x;
	}
}

pragma solidity ^0.8.0;
contract C {
	constructor(uint x) {
		x;
	}
	struct S { uint x; uint y; uint z; uint[4] foo; uint[10] bar; }
	function test() public pure returns (uint) {
		return uint(S(bar: uint[10] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 }));
	}
}
