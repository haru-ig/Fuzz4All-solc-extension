pragma solidity ^0.8.0;
contract ArraySort
	{
	bool isFound;
	uint data;
	uint[] datax;
	mapping(uint => uint) datay;
	constructor() public { 	data  = 1;
		datax = [1];
	}
	function ArraySearch(uint a) public
	{
		uint i,j;
		for ( i = 0; i < datax.length; ++i) {
			if (datax[i] == a)
			{
				j = i;  i = datax.length; break;}
		}
		if (i== datax.length)
		{data = 0;} else { isFound = true; }
		while ( (isFound) && (i < datax.length))
        {
			j = int(keccak256(abi.encodePacked((datax[i]))));
		    if (datax[j] > a)	{datax[j] = datax[j] - a; break;}
		    if (datax[j] == a)
                    { data = datax[j]; isFound = false;}
		    if (datax[j] < a)	{datax[j] = datax[j] + a; break;}
		    if (datax[j]> a)  {data = datax[j]+datax[j-1]; isFound=false;}
        }
    }
	function ArrayLength() public
	{
		data = datax.length;
	}
	}
