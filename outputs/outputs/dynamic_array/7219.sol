pragma solidity ^0.8.0;
contract Bad {
	function f() public { return f(); }
}
