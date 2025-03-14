pragma solidity ^0.8.0;
contract MutateUint
{
	constructor(uint256 _value)
	{
		_value = _value + 7;
	}
	uint256 public getUint() view returns(uint256 value)
	{
		return _value;
	}
	function setUint(uint256 _value) public
	{
		_value = _value - _val;
	}
}
