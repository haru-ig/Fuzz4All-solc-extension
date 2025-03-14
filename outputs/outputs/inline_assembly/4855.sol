pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator5_2 {
	struct mutator5_2 {
		uint h;
		uint i;
	}
	mutator5_2 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify6() public {
		data.h = 0;
		data.i = data.h + data.h;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator10 {
	struct mutator10 {
		uint h;
		uint i;
	}
	mutator10 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify1(uint j) public {
		data.i = (j << 2);
		data.h = data.i >> 27;
	}
}
