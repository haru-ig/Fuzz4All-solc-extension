pragma solidity ^0.8.0;
contract Convert {
	function convert(uint value) public pure returns (string memory) {
		return toString(value);
	}
}
