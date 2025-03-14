pragma solidity ^0.8.0;
contract Mutated4
	{
	uint data;
	uint data2;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 300; data2 = 10; data3 = 1; data4 = data;}
	function MutatedDataUint2(uint a, uint b, uint c, uint d) public
	{
	   datax = d;
    }
	}
contract Mutated5
	{
	uint data;
	uint data2;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 300; data2 = 10; data3 = 2; data4 = data;}
	function MutatedDataUint3(uint a, uint b, uint c, uint d, uint e) public
	{
	   datax = e;
    }
	}
contract Mutated6
	{
	uint data;
	uint data2;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 300; data2 = 10; data3 = 3; data4 = data;}
	function MutatedDataUint4(uint a, uint b, uint c, uint d, uint e, uint f) public
	{
	   datax = f;
    }
	}
contract Mutated10
	{
	uint data;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 300; data3 = 3; data4 = data;}
	function MutatedDataUint5(uint data, uint a, uint b, uint c, uint d
