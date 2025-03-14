pragma solidity ^0.8.0;
contract ArrayMut10
{
	uint32[3,5] private s = [1];

	function array(uint256[3] memory _l) public pure {
		_l[0] = 0;
	}
}
