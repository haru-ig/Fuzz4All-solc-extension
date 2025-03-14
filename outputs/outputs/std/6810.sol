pragma solidity ^0.8.0;
contract B {
	struct A {
		uint256 a;
	}
	uint8 private x;
	function foo() external {
		x = 6;
		A y;
		y.a = 8;
	}
	function bar() public view returns (uint256, uint256) {
		uint8 a;
		a = x + 1;
		return (x, a);
	}
}
