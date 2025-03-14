pragma solidity ^0.8.0;
contract Array
{
	uint[] arr;
	mapping (uint => bytes32) hash;
	bytes32 private key;
	constructor () public { }

	function addToHash(uint x)
		public
		{
		hash[x] = keccak256(abi.encodePacked(x));
	}

	function getLow()
		public
		constant
		returns
		(
			uint
			)
		{
		uint smallest = uint(2**255);
		uint[] storage data = arr;
		for (uint i = 0; i < arr.length; ++i)
		{
			uint x = data[i];
			if (hash[x] < key)
			{
				smallest = x;
			}
		}
		return smallest;
		}

	function getHigh()
		public
		constant
		returns
		(
			uint
			)
		{
		uint largest = 0;
		uint[] storage data = arr;
		for (uint i = arr.length - 1; i >= 0; --i)
		{
			uint x = data[i];
			if (hash[x] > key)
			{
				largest = x;
			}
		}
		return largest;
		}

	function add(uint x)
		public
		{
		if (datax > 1e7)
		{
			data = uint[datax];
		}
		arr.push(x);
		uint[] storage data = arr;
		data.push(x);
		--datax;
	}

	function delFrom(uint x, uint y)
		public
		{
		arr.length = arr.length.sub(x.sub(y));
		uint[] storage data = arr;
		if (datax <= 1)
		{
			for (uint i = 0; i < datax; ++i)
			{
				data[i] = 0xffffffff;
			}
		}
		else
		{
			datax = datax.sub(x.sub(y));
			for (uint i = x.add(1); i < y; ++i)
			{
				data[i] = data[i.sub(x)];
			}
		}
	}

	function get()
		public
		constant
		returns
