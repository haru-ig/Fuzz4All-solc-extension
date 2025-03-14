pragma solidity ^0.8.0;
contract Arithmetic {
	struct S {
	  uint[10] x;
	  uint[10] y;
	}
	function test(S memory s) public pure {
	  assembly {
	    mstore(0, s.x)
	    s.x := and(0, s.x)
	    mstore(0, s.y)
	    s.y := and(0, s.y)
	    mstore(0, s.x)
	    s.x := div(s.x, s.y)
	    mstore(0, s.y)
	    s.y := div(s.y, s.x)
	    mstore(0, s.x)
	    s.x := div(s.x, s.x)
	  }
	  s.x[20] = 9;
    }
}
