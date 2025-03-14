pragma solidity ^0.8.0;
contract SetUint
{

	constructor() public
	{
		_value = 8;
	}
	function getValue() public view returns (uint256)
	{
		return _value;
	}
	function setValue(uint256 value) public
	{
		_value = value;
	}
}
