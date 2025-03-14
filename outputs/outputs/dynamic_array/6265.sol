pragma solidity ^0.8.0;
library l {
	constructor() {}
	function get() public view returns (s memory) {
		return s(0,0);
	}
}
contract c {
	function f() public returns (s memory, string memory) {
		s memory s1 = l.get();
		return (s1, "");
	}
}
