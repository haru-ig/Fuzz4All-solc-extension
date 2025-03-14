pragma solidity ^0.8.0;
contract c {
	s[] private ss;
	function f() public returns (s[] memory) {
		return ss;
	}
}
