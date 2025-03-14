pragma solidity ^0.8.0;
contract ArrayMut2s
{
	function array(uint256[4] memory _r) public pure {
		_r[2] = 0;
	}
}

pragma solidity ^0.8.0;
contract ArrayMut8 {
	function array(uint256[4] memory _r) public pure {
		_r[0] = 42;
		_r[1] = 42;
		_r[2] = 0;
		_r[3] = 0;
	}
}
