pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public pure {
		s.r = s.r;
		s.r = s.r;
	}
}
