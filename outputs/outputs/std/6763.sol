pragma solidity ^0.8.0;
contract Multiply50_FunctionReturnsArray {
	function setResult(uint memory arg) public pure returns (uint memory) {
		for(uint i = 0; i < 100000; i++) { }
		return (arg * arg);
	}
}
