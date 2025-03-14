pragma solidity ^0.8.0;
contract m105 {
	mapping (uint => uint) public m;
	uint a;
	constructor () public {
		m[0] = 2;
		if (a>17) {
			m[0] = 6;
			m[10] = 17 + 10;
			uint x = b(100);
			m[x + 1] +=1;
			m[100] = m[0].add(m[x]);
			m[3] = m[0] + 15;
		}
	}
	function b(uint a) public returns (uint) {
		uint b = a;
		return b + 17;
	}
}
