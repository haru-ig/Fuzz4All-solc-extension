pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint a;
	    uint b;
	}
	function test(T memory t) public pure {
	    t.a *= t.b;
	    t.a = t.a * 0xffffffffffffffffffffffffffffffff;
	    t.a = t.a * 0xfffffe;
	    t.a = t.a * 0xfffe00;
	    t.a = t.a * 0xff0000;
	    t.a = t.a * 0xff;
	}
}
