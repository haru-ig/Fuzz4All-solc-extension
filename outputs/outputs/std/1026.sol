pragma solidity ^0.8.0;
contract ArrayMut5
{
	uint256 _i;
	function set_int(uint256 _i) public {
		this._i = _i;
	}
	function get_int() public view returns(uint256) {
		return this._i;
	}
}
