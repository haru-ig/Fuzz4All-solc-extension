pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated8 {
	struct mutated8 {
		uint c;
	}
	mutated8 public data;
	constructor() {
		data.c = 10;
	}
	function add1() public {
	  data.c += 1;
	  data.c += 1;
	}
	function add22() public {
	  data.a += 2;
	  data.c += 2;
	  data.c += 2;
	  addAnother();
	  data.c += 2;
	  data.a += 2;
	  data.c += 2;
	}
	function addAnother() public {
     data.a += 1;
	}

}
