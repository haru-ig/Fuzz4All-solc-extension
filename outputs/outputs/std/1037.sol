pragma solidity ^0.8.0;
contract ArrayMut9Mut
{
	function array(uint256[4] memory _r, uint256 _i) public pure {
		_r[4] = _r[4] + _r[1];
	}
}
