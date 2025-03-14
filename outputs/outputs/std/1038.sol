pragma solidity ^0.8.0;
contract ArrayMut10
{
	function array(uint256[4] memory _r) public pure {
		_r[2] = 0;
	}
}
