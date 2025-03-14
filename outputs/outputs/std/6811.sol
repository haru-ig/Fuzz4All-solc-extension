pragma solidity ^0.8.0;
contract B {
	uint public a = 3;
	uint public x = 0;
	modifier Mmod(uint _a) {
		require(a % _a == 0, "Modulus Violation");
		_;
	}
	function foo(uint _x) external {
		x = 4;
		_x %= x;
		require(x > 3, "Modulus Violation");
	}
}
