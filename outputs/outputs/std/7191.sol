pragma solidity ^0.8.0;
contract MutateMUL {
	struct T {
	    uint a;
	    uint b;
	}
	function test(T memory t) public pure {
	    t.a *= t.b;
	    t.a %= 7;
	}
}
