pragma solidity ^0.8.0;
contract A {
	function f() public pure {}
	function foo() public {
		f();
		delete f;
	}
}
