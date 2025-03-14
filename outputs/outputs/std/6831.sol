pragma solidity ^0.8.0;
contract C {
	address test;
	constructor(address memory test_address) public {
		test = this.test;
	}
}
contract D {
	address test;
	address test2;
	address test3;
	constructor() public {
		test3 = address(new C(address(16)));
		test2 = address(new C(address(0)));
		test = address(new A());
	}
}
