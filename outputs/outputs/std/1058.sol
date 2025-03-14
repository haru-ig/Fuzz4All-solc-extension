pragma solidity ^0.8.0;
contract ArrayMut2 {
	function array(uint64[5] memory _r) public pure {
		if (msg.sender!= address(0)) {
			_r[3] = 2;
		}
		_r[4] = 0;
	}
}
