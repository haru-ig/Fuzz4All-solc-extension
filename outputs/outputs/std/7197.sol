pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint a;
	    uint[1] _b;
	}
	function test(T memory t) public pure {
	    t.a *= t._b[0];
	    t.a *= 0xffff;
	    t.a *= 0xfe00;
	    t.a *= 0xff00;
	    t.a *= 0xff;
	}
}
