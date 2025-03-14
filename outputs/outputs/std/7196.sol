pragma solidity ^0.8.0;
contract MultiplyADD {
	struct T {
	    uint a;
	    uint b;
	}
	function test(T memory t) public pure {
	    t.a *= t.b;
	    t.a += 1;
	}
}
