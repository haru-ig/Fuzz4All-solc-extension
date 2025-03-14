pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
		uint[] x;
	}
	constructor() public {
		s memory memory1 = l.get();
	}
}
