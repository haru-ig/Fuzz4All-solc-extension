pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint datax;
	constructor() public { data = 100; datax = data;}
	function MutatedDataAddress(uint a, uint b) public
	{
	   data = 123;
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   a = (b + data);
	}
	function MutatedDataAddress(uint a, uint b) public
	{
	   data = 123;
	   a = (a + (1e7-1));
	   data = (a - (a-100));
	  data = ((a-b)-((a-b+100)));
	  data = ((data-10) * (((data-1)/20000)));
	   data = ((data-1) / (10+100));
	}
	function MutatedDataUint() public
	{
	   data = 1234567890;
	   datax = data * 0xfff7f7f7ffff & 25588778;
	   Mutated() a ;
	}
	}

pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint datax;
	constructor() public { data = 100; datax = data;}
	function MutatedDataAddress(uint a, uint b) public
	{
	   data = 123;
	   a = (a - (1e7-1));
	   b = (b + 255u);
	   data = (a + b);
	  data = (a + b * 124043);
	  data = (a+b) - (uint(uint(a+b)-a ));
	  data = (a+b) + (uint(uint(a+b)-a )) + (uint(uint(a+b)-b ));
	  data = ((data * 120247) + (a+b));
		data = 1417+(uint(uint(data)-data));
	  data = (data-datax / (uint(uint(data)-data)));
	  Mutated() a ;
	}
	function MutatedDataUint() public
	{
	   data = 1234567890;
	   datax = data * 0xfff7f7f7ffff & 255
