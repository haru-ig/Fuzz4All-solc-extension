pragma solidity ^0.8.0;

contract C {
	function g(address s) public returns(uint[] memory)
	{
		uint c = 0;
		uint[] memory o = new uint[](1);
		o[c] = c++;
		return o;
	}
}
