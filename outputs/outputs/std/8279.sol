pragma solidity ^0.8.0;
contract Semantics {
	int public _a;
	function Semantics(int) public {
		_a = 3;
	}
	function mul(int x) public returns (int y) {
		y = x * x + 1;
	}
}
