pragma solidity ^0.8.0;
contract Mutated5
	{
	function mutatesAddress(address x) public
	{
	   x = (address(x) - (1e7-1));
	}
	}
