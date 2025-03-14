pragma solidity ^0.8.0;
contract ArrayMut8u {
	function array(uint8[4] memory _r) public pure {
		_r[0] = 0;
		_r[1] = 42;
		_r[2] = 42;
		_r[3] = 0;
	}
}
