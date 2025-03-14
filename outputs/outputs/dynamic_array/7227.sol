pragma solidity ^0.8.0;
library badmath {
	function add(int a, int b) private pure returns (int c) { return a + b; }
}
library badmathmath {
	function add(int a, int b) public pure returns (int c) { return a + b; }
}
contract badmathmathbad {
	using badmathmath for int;
	int foo;
	constructor(
    int[] memory a) public { foo =  badmath.add(a.length, 1).x; }
}
