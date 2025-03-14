pragma solidity ^0.8.0;
contract ArrayMut10
{
	uint256[] internal __m;

	function array(uint256[4] memory _r, uint256 _i) public pure {
		(uint256 a, uint256 b) = _r;

		__m[1] = a + b;
	}
}
