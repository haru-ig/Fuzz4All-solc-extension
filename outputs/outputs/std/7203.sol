pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint a;
	    uint b;
	}
	function test(T memory t) public pure {
	    uint128 x = t.a * t.b;
	    x = 128 * (x >> 1);
	    x = x * (x * (x * (x * 64 + 19) + 23)) >> 27;
	    x = x * (x * (x * 65536 + 1013904223) + 499593);
	    x = x / (0 - 10139042241);
	}
}
