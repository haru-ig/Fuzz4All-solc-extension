pragma solidity ^0.8.0;
contract ArrayS {
	function _set(uint256[] storage memory s_1, uint256 x) public {
		s_1.push(0);
	}
	function _get(uint256[] view s_1) public view returns(uint256 x) {
		uint256 len = s_1.length;
		require(len > 0);
		return s_1[len - 1];
	}
	function _push(uint256[] storage memory s_1, uint256 x) public{
		s_1.length++;
		s_1[s_1.length-1] = x;
	}
}
