pragma solidity ^0.8.0;
contract MutateXOR {
	function test(uint a, uint b, uint c) public pure {
	  uint l;
	  uint h;
	   l=a^b^c;
	   h=a^b;
	   h^=c;
	   l^=c;
	}
}
