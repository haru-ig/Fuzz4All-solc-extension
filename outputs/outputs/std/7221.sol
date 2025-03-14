pragma solidity ^0.8.0;
contract Arithmetic1
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
pragma solidity ^0.5.0;
contract Arithmetic2
{
	struct S {
	  uint[10] x;
	  uint[10] y;
	}
	function test(S memory s) public pure {
	  if(s.x[5] < s.y[7]){
	  	s.x[5] / s.x[1];
	  }
	  s.x[5] / s.x[4];
	  s.x[5] / s.y[5];
	}
}
