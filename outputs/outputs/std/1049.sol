pragma solidity ^0.8.0;
contract ArrayMut {
	uint256[] memory store;
	function set(uint256 _i) public {
		store[_i] = _i;
	}
	function get(uint256 _i) public view returns (uint256) {
		return store[_i];
	}

}
