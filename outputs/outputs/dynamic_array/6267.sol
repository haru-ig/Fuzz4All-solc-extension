pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}
	struct t {
		uint a;
		uint b;
		uint c;
	}
	function get() public returns (t memory) {
		return t(0,0,0);
	}
}
