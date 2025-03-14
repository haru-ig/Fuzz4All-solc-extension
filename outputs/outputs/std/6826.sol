pragma solidity ^0.8.0;
contract A {
	address test;
	constructor() public {
		test = msg.sender;
	}
}

pragma solidity ^0.8.0;
contract B {
	address test;
	constructor() public {
		test = address(new A());
	}
}
