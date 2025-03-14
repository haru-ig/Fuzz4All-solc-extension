pragma solidity ^0.8.0;
contract Arithmetic
{
	struct C {
	  uint[10] a1;
	  uint[10] a2;
	  uint[10] a3;
	}
	function test(C memory c) public pure {
	  c.a1[5] / c.a1[4];
	  c.a1[5] / c.a2[4];
	  c.a1[5] / c.a3[4];
	}
}
