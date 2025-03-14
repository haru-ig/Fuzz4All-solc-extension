pragma solidity ^0.8.0;
contract B {
	bytes public b = "Hello";
	function foo() external pure {
		require(b == "Hello", "Hello mismatch");
	}
}
