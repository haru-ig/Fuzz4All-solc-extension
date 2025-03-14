pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public pure returns (bool) {
		return s.r.call{ gas: 100000000 }("");
	}
}
