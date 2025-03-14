pragma solidity ^0.8.0;
contract Mutated1
	{
	mapping(uint => address) memory addresses;
	function MutatedAddress(uint a, uint b) public {
		a = (a - (1e7-1));
		b = (b - (1e7-1));
		b = (a - b);
		a = (a + b);
		address _temp = (a % addresses.length);
		a = _temp;
		a = b;
		a = a + 1;
		emit EmitAddress(a, b);
	}
	}
