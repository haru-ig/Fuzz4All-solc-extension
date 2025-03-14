pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  uint value;
	  uint y;
	}
	modifier test(S storage a) {
	  a.x = 5 + 2 * (a.y);
	  a.y = a.x;
	  a.x *= s.y;

	  return ;
	}
	function test(S memory s) public pure {}
}
