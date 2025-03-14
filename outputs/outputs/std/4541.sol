pragma solidity ^0.8.0;
contract MyContract {
	struct S { uint a; uint b; uint c; uint d; }
	S s;
	constructor () {
		s = S(1, 2, 3, 4);
	}
	modifier do() {
		s.a = s.a + 1;
		assert(s.a == 5);
		_;
	}
	function set(uint a) public do() {
		s.b = s.b + 1;
		s.c = s.c + 1;
	}
	function get() public view returns(uint, uint, uint, uint) {
		return (s.a, s.b, s.c, s.d);
	    }
	}
