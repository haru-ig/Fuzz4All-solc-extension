pragma solidity ^0.8.0;
contract Modded {
	constructor() {}
	function f() public {
		function g() public {
			return g();
		}
		return g();
	}
}
