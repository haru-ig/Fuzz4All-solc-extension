pragma solidity ^0.8.0;

contract Bad2 {
	struct s {
		int x;
	}
	s[] b;
	constructor() { address[] memory c = new address[](0); }
}
