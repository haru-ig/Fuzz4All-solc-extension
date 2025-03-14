pragma solidity ^0.8.0;
contract ArrayMut9
{
	function array(uint256[4] memory _r, uint256 _i) public pure {
		_r[1] = 0;
	}
}
