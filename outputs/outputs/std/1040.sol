pragma solidity ^0.8.0;
contract ArrayMut11_new {
	function array(uint256[4] memory _r) public pure {
		for(uint256 _i = 0; _i < _r.length; _i++)
			_r[_i] = 0;
	}
}
