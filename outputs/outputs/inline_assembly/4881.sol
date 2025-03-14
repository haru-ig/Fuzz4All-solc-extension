pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated9 {
	struct mutated9 {
		uint a;
	}
	mutated9 public data;
	constructor() {
		data.a = 10;
	}
	function add1() public {
	  data.a += 1;
	  data.a += 2;
	}
	function add21() public {
	  data.a += 2;
	  data.a += 1;
	}
	function add22() public {
	  data.a += 2;
	  data.a += 2;
	}
	function sub33() public {
	  data.a -= 1;
	}
	function add34() public {
	  data += 1;
	  data += 2;
	}
	function add45() public {
	  data.a += 1;
	  data.a += 2;
	  data.a += 3;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated9 {
	struct mutated9 {
		uint a;
	}
	mutated9 public data;
	constructor() {
		data.a = 48;
		data.a = 33;
	}
	function sub23() public {
	  data.a -= 33;
	  data.a -= 23;
	  data.a -= 1;
	  data.a -= 2;
	}
	function add344() public {
	  data -= 2;
		data.a += 1;
		data.a += 2;
		data.a += 3;
	}
	function add455() public {
	  data.a += 3;
	  data.a += 6;
	  data.a += 3;
	  data.a += 9;
	  data.a += 548;
	}
	function add11() public {
	  data.a += 11;
	}
	struct mutated9 {
		uint a;
		uint b;
	}
	constructor2(uint _a, uint _b) {
	  data.a = _a;
      data.b = _b;
    }
    function add555() public {
      data.
