pragma solidity ^0.8.0;
contract ArrayMut11
{
	enum A {
		a,
		bb,
		ccc,
		dddd,
		ee
	}
	function array(A[] calldata _a) public pure {
		_a[0] = A.ee;
	}
}
