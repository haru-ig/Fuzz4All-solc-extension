pragma solidity ^0.8.0;
contract A {
	uint public x;
	A() {
		address addr = A();

		x = addr.a;
	}
	modifier Pmod(uint _a) {
		uint b = _a;
		require(x % b == 0, "Modulus Violation");
		_;
	}
}
