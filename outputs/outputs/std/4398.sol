pragma solidity ^0.8.0;
contract Mutated1
	{
	uint public data;
	struct Data{ uint x; uint y; };
	address public data2;
	function add(uint a,uint b) public {
	   data = (a - b);
	   data2 = address(data);
	}

	}

pragma solidity ^0.8.0;
contract NewMutated
	{
	uint public data;
	uint public data2;
	address public data3;
	function NewMutated(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	   Data memory Datamem;
	   Datamem.x = (a == 1);
	   Datamem.y = (b == 1);
	   data = (a + (b * (5 * (5 - 3)/3 * (5 / 2))));
	   data = (data * 4);
	   data2 = address(Datamem);

	   data3 = a;
	}
	}
