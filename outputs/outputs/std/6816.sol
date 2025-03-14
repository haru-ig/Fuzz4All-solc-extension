pragma solidity ^0.8.0;
contract B {
	struct A {
		uint public i;
	}
	A public a;
	function change(uint _i) external {
		a.i = _i;
	}
}
