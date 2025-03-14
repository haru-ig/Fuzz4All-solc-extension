pragma solidity ^0.8.0;
contract Bad3 {
	struct s {
		int x;
	}
	s[] b;
	constructor() {
		b = new s[](0);
		b[0].x = 3;
	}
}
