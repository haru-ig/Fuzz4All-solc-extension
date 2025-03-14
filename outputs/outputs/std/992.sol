pragma solidity ^0.8.0;
contract SetUintMutation
{
	uint256 _value;
	constructor() public {
	    _value = 0;
	}
	function set(uint256 n) public {
	    _value = n;
	}
	function get() public view {
	    return _value;
	}
}
