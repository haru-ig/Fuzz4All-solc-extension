pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct mutated {
		uint a;
	}
	mutated public data;
	constructor() {
		data = mutated({a:20});
  	}
}
