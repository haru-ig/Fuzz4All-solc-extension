pragma solidity ^0.8.0;
contract ArrayMut5 {
	function array(uint256[3] memory _r) public pure {
		_r[0] = 42;
		_r[1] = 42;
		_r[2] = 0;
	}
}
