pragma solidity ^0.8.0;
contract mutator {
	contract Mutator1 {
		struct {
			uint h;
			uint i;
		} public d;
	}
	Mutator1 public data = Mutator1(0, 2);
	constructor() public {
		data.d.i = data.d.i;
	}
}
