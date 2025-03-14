pragma solidity ^0.8.0;
contract ArrayMut5 {
	function arrayA01(uint256[] memory _a) public pure {
		_a[0] = 42;
		_a[1] = 42;
		_a[2] = 0;
	}
}
