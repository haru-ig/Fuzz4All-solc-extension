pragma solidity ^0.8.0;
import 'ArrayMut.sol';
contract ArrayMut2 {
	function array(uint64[5] memory _r) public pure {

		_r.length = 9;
		_r[3] = 2;
		_r[4] = 0;
	}
}
