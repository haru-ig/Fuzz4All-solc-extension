pragma solidity ^0.8.0;
contract MultiplyXOR2 {
	struct T {
	    uint a;
	    uint b;
	}

	function test(mut T memory t) public pure {
	    t.a *= t.b;
	    t.a *= 0xffff;
	    t.a *= 0xfe00;
	    t.a *= 0xff00;
	    t.a *= 0xff;
	}
}
