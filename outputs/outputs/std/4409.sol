pragma solidity ^0.8.0;
contract Mutated2
	{
	uint data;
	uint data2;
	uint datax;
	constructor() public { data = 300; data2 = 10; datax = data;}
	function MutatedDataAddress(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function MutatedDataUint(uint data) public
	{
	   datax = data;

   }
	}


pragma solidity ^0.8.0;
contract Range
	{
	uint data;
	uint data2;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 100;}
	function RangeData(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function RangeData2(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	}
