pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  uint x;
	  uint y;
	}
	function test(S memory s) public pure {
	  s.y = s.x;
	  s.x = s.y - 5;
	}
}
