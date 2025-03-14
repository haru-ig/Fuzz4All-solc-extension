pragma solidity ^0.8.0;
contract Address {
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public view returns (bool) {
		s.r = s.r;
		s.r = s.r;
		return true;
	}
}
