pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator10 {
	struct mutator10 {
		uint[4] a;
	}
	mutator10 public data;
	constructor() {
		data.a = [10,20,30,40];
	}
	function add10() public {
	  data.a[0] += 1;
	  data.a[1] += 1;
	  data.a[2] += 1;
	  data.a[3] += 1;
	}
}



pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator11 {
	struct mutator11 {
		uint a;
	}
	mutator11 public data;
	constructor() {
		data.a = 10;
	}
	function add11(uint x) public {
	  assembly
	   let a := mload(add(x, 0x20))
	   mstore(add(x, 0x20), a + 10)



	}
}




pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator12 {
	struct mutator12 {
		uint a;
	}
	mutator12 public data;
	constructor() {
		data.a = 10;
	}
	function add12(uint x) public {
	  assembly
	   let a := mload(add(x, 0x20))
	   let t := x
	   let y := mload(add(add(t, 0x20), 0x20))
