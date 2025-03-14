pragma solidity ^0.8.0;
contract Mutated1
	{
	uint data;
	uint data2;
	uint datax;
	constructor() public { data = 300;}
	function Mutated1DataAddress(address a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function Mutated1DataUint(uint data) public
	{
	   datax = data;
   }
	}
