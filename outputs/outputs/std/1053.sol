pragma solidity ^0.8.0;
contract ArrayMut6 {
	function array(uint[3] memory _rr) public pure {
		_rr[0] = 0;
		_rr[1] = 255;
		_rr[2] = 0;
	}
}
