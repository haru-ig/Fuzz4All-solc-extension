pragma solidity ^0.8.0;
contract MultiplyXOR {
	struct T {
	    uint a;
	    uint b;
	}
	function test(T memory t) public pure {
	    t.a *= t.b;
	    t.a *= 0xffff0;
	    t.a *= 0xfe0000;
	    t.a *= 0xff0000;
	    t.a *= 0xff;
	}
}
