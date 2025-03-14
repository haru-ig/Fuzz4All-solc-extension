pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s = S(initint);
	uint constant initint = 10;
	constructor() {
		s = S(initint);
		s.i += 5;
		s = S(initint);
		a = s.i - s.i;
	}
	uint constant a;
	}
