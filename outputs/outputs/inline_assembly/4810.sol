pragma solidity ^0.8.0;
struct mutator_semantics {
	uint public h;
	uint private i;
}
contract mutator {
	mutator_semantics public data;
	constructor() public {
		data.i = data.i;
	}
}
