pragma solidity ^0.8.0;
contract Modification
	{
	uint data;
	constructor() public { data = 1e7; }
	function ModificationData() public { data = 2e7; }
	function Mutate() public { data = data.sub(1);}
	}
