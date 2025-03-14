pragma solidity ^0.8.0;
library Test {
	function f(uint[1][3] memory x) public pure returns (uint) {
		return x[0][1];
	}
}
