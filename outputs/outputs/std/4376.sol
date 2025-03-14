pragma solidity ^0.8.0;
contract Mutate
	{
	function MutateAddress(uint a, uint b) public
	{
	   a -= b * 2;
	}
	}

pragma solidity ^0.8.0;
contract ThirdMutate
	{
	function ThirdMutateAddress(uint a, uint b) public
	{
	   a -= b;
	   a %= 100;
	}
	}
