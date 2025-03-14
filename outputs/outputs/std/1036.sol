pragma solidity ^0.8.0;
contract ArrayMut2
{
	function array() public pure {
		return array((1,3,10,2).toUintArray());
	}
}
