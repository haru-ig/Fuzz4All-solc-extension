pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public pure returns (s)
	{
		s.r = s.r;
		s.r = s.r;
 		return(s);
	}
}
contract Arithmetic
{
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public pure returns (bool, s)
	{
		s.r = s.r;
		s.r = s.r;
 		return(s.b, s);
	}
}
contract Arithmetic
{
	struct S {
	  address r;
	  bool b;
	}
	function test(S memory s) public pure returns (bool, s, uint256)
	{
		s.r = s.r;
		s.r = s.r;
 		return(s.b, s, uint256(1));
	}
}
