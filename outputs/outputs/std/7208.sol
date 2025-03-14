pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint r = 3;
	    uint[] v;
	}

	function test(T memory t) public pure {
	    t.r += t.r;
	    t.r += t.r;
	    t.r += t.r;
	    t.v[0] = 1*t.r;
	    t.r = t.r + 27;
	    t.v[201] = (m_1[1] >> 2) + t.r * (1 << (m_3 - 3079));
	}

	uint[] m_1 = [1];
	uint[] m_3 = [1,2,3];
}
