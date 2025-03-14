pragma solidity ^0.8.0;
contract Mutated
	{
	uint public data;
	bool public a;
	constructor() public { data = 100; a = true;}
	function MutatedAddress(uint a, bool b) public
	{
	   a = a < (1e7);
	   b = b > 0;
	   if (a) { data = a; }
	   else { data = a + (5000000); }
	}
	}

pragma solidity ^0.8.0;
contract Mutated
	{
	uint public data;
	bool public a;
	uint public b;
	uint256 private constant ADD_VALUE = 5000000;
	constructor() public { data = ADD_VALUE;}
	function MutatedAddress(uint a, uint b, uint c) public
	{
	   a = a < (1e7);
	   b = b > 0;
	   if (a && b) { data = a + (5000000); }
	}
	}
