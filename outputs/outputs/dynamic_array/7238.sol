pragma solidity ^0.8.0;
contract Bad3 {
	struct s {
		int x[10];
	}
	s []b;
	constructor() { address[] memory c = new address[](0); }
}
