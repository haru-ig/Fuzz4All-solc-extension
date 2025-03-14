pragma solidity ^0.8.0;
contract range
	{
	uint data;
	uint datax;
	constructor() public { data = 1; }
	function rangeData(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   datax = a;
	}
	}
contract testRange is Range {
	function testrange() public
	{
	 data = rangeData(10, 22);
	}
}
