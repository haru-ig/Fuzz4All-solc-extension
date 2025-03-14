pragma solidity ^0.8.0;
contract A {
	struct B {
		uint a;
	}
	uint public x = 1;
	modifier Pmod(uint _a) {
		require(x % _a == 0, "Modulus Violation");
		_;
	}
}
