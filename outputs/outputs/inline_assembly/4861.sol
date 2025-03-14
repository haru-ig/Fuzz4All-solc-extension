pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator7 {
	struct mutator7 {
		uint h;
		uint i;
	}
	mutator7 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify() public {
	  data.h = 0;
	  assembly {
	  	data_i := data_i + add(8, 1)
	  	data_i := sub(data_i, sub(sub(sub_i, 1), 1), 1)
	  	data_i
	  }
	}
	function modify2() public {
	  data.h = 0;
      assembly {
        data_i := data_i + add(8, 1)
        data_i := add(data_i, 1)
        data_i
        data_i := sub(sub(sub_i, 1), 1)
        substore(0x30, data_i)
        data_i
      }
	}
}
