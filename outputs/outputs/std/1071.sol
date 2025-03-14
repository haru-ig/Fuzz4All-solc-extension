pragma solidity ^0.8.0;
contract ArrayGen {
	function newArray() returns (uint64[6] memory) {
		uint64[6] memory n;
		n[3] = 8;
		n[4] = 0;
		n[5] = 42;
		n[6] = 100;
		return n;
	}
}
