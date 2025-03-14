pragma solidity ^0.8.0;
contract MultiPrecision {
	uint256 two;
	function set(uint256 key) public {
		two^=key;
		two>>=8;
		two&=~(2**256-1);
	}
	function get() public view returns (uint256) {
		return two;
	}
}
