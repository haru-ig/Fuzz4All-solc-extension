pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint a;
	    uint r;
	}
	struct _T {
	    uint a;
	    uint b;
	    uint c;
	}

	function test(_T memory _t) public pure {
	    _t.b = 0xffffff;
	    _t.a = 0xfffffffffff1;
	    _t.a *= _t.b;
	    _t.c /= _t.a;
	}
}
