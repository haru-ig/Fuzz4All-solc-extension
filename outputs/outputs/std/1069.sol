pragma solidity ^0.8.0;
contract ArrayMut {
	function array(uint64[] memory _r) public pure {
		_r[3] = 2;
		_r[4] = 0;
	}
}
