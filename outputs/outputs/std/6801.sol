pragma solidity ^0.8.0;
contract A {
	uint public x = 11;
	function A() {
		A a = new A();
	}
}

pragma solidity ^0.8.0;
contract A {
	struct B {
		uint a;
	}
	bytes b = b"abcd";

	address x;
	constructor() {
		x = address(0);
	}
}
