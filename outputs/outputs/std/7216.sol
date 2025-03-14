pragma solidity ^0.8.0;
contract Arithmetic
{
	struct S {
	  uint[10] x;
	  uint[10] y;
	}
	function test(S memory s) public pure {
	  if(s.x[5] < s.y[7]){
	  	s.x[5] / s.x[4];
	  }
	  s.x[5] / s.x[4];
	  s.x[5] / s.y[5];
	}
}
