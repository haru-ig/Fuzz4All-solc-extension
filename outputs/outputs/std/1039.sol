pragma solidity ^0.8.0;
contract ArrayMut10
{
	uint256[8] memory _r;
	uint256 public _i;
	function set() public {
		_r[0] = _i;
		_r[9] = _i;
		_r[2] = 0;
		_r[6] = 0;
	}
	function get() public view returns (uint56) {
		return _r[3];
	}
	function array() public view returns(uint256[4],uint256) {
		return (_r, _i);
	}
	function set2() public{
		_r[1] = _r[0];
		_r[0] = _i;
	}
}

pragma solidity ^0.8.0;
contract ArrayMut11
{
	uint256[9] memory _r;
	uint256 public _i;
	function set() public {
		_r[0] = _i;
		_r[9] = _i;
		_r[1] = _r[2];
		_r[8] = _i;
	}
	function get() public view returns (uint56) {
		return _r[3];
	}
	function array() public view returns(uint256[4], uint256[8], uint256) {
		return (_r[1], _r, _i);
	}
	function set2() public{
		_r[4] = _r[0];
		_r[0] = _i;
	}
	function get2() public view returns (uint56[8]) {
		uint56[8] storage b;
		b[0] = _r[5];
		b[1] = _r[2];
		b[2] = _r[8];
		b[3] = _r[6];
		return (_r[7]);
	}
	function array2() public view returns(uint256[4], uint256[8], uint256[4]) {
		uint256[4] storage c;
		c[0] = _r[3];
		c[1] = _r[6];
		c[2] = _r[7];
		c[3] = _r[4];
		return (_r, _r, _r, _r, _i, _i, _i);
	}
}
