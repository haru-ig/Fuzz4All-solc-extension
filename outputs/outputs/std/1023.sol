pragma solidity ^0.8.0;
contract ArrayMut
{
	function set_v(uint256[] storage _arr, uint256 _idx, uint256 _n) public {
		_arr[uint256(_idx)] = _n;
	}
	function read_v(uint256[] memory _arr) public view returns(uint256) {
		return _arr[uint256(8)];
	}
}
