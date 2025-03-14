pragma solidity ^0.8.0;
contract Range2 	{
	uint data;
	uint datax;
	constructor() public { data = 1;}
	function RangeData(uint a, uint b) public
	{
	   a = (a >= 0);
	   b = ((b >= 0) && ((b > a) || ((b == a) && (a==0))));
	   datax = a;
	}
	}



pragma solidity ^0.8.0;
contract Array
	{
	function minmax(uint a, uint b) public { datax = 1; }
	function minmax_string(string memory a, string memory b) public { datax = 1; }
	function max1(uint a, uint b) public { datax = 1; }
	function max1_string(string memory a, string memory b) public { datax = 1; }
	function max2(uint a, uint b) public { datax = 1; }
	function max2_uint(uint a, uint b) public { datax = 1; }
	function max3(uint a, uint b, uint c) public { datax = 1; }
	function max3_uint(uint a, uint b, uint c) public { datax = 1; }
	function max4(uint a, uint b, uint c, uint d) public { datax = 1; }
	function min1(uint a, uint b) public { datax = 1; }
	function min1_uint(uint a, uint b) public { datax = 1; }
	function min2(uint a, uint b) public { datax = 1; }
	function min2_uint(uint a, uint b) public { datax = 1; }
	function min3(uint a, uint b, uint c) public { datax = 1; }
	function min3_uint(uint a, uint b, uint c) public { datax = 1; }
	function min4(uint a, uint b, uint c, uint d) public { datax = 1; }
	function sum(uint a, uint b) public { datax = 1; }
	function sum_uint(uint a, uint b) public { datax = 1; }
	function add(uint a, uint b) public { datax = 1; }
	function add_uint(uint a, uint b) public { datax =
