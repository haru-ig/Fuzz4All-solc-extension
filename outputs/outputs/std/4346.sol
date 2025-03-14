pragma solidity ^0.8.0;

contract Solidity
	{
	string memory name = "Solidity";

	function get() public pure
	returns (string memory)
		{
		return name;
	}
	}
