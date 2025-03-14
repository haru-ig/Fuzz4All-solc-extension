pragma solidity ^0.8.0;
library l {
	struct s {
		uint _a;
		uint _b;
	}
	function get() public returns (s memory) {
		s memory a;
		a._a = 1;
		a._b = 2;
		return a;
	}
}
contract test {
	function get() public view returns (s memory) {
		return l.get();
	}
}





contract test {
	function get() public view returns (s memory) {
		return l.s({a: 1, b: 2});
	}
}
