pragma solidity ^0.8.0;
contract A {
	function setB(uint _b) private{}
	uint public b = 0;
}
contract B is A {
	modifier Mmod(uint _a) {
		require(a % _a == 0, "Modulus Violation");
		_;
	}
}
