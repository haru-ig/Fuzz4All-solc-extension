pragma solidity ^0.8.0;
contract Arith2  {
	struct S {
	  bytes memory b;


	  mapping(uint256=>S) public a;
	}
	function test(S memory s) public pure {
		s.b = s.b;
		s.b = s.b;
	}
}
