pragma solidity ^0.8.0;
contract A {
	address test;
	Constructor() public {
		test = msg.sender;
	}
}
contract B {
	address test;
	Constructor() public {
		test = (new A()).test;
	}
}
