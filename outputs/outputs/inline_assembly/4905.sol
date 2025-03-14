pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct mutated {
		uint a;
	}
	mutated public data;
	constructor() {
		data.a = 20;
	}
	function add1() public {
		asm {
			let x := mload(0x40)
			mstore(0x40, add(x, 1))
		}
	}
}
