pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint r;
	}
	function test(T memory t) public pure {
	    t.r *= 1;
	    t.r *= 2;
	    t.r *= 3;
	    t.r *= 4;
	    t.r *= 5;
	    t.r *= 6;
	    t.r *= 7;
	    t.r *= 8;
	}
}
