pragma solidity ^0.8.0;
contract ArrayMut2 {

	function array(uint256[2] memory _r) public pure {
		_r[0] = 42;
		_r[1] = 100;
	}
}
