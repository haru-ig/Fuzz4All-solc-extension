pragma solidity ^0.8.0;
contract Arithmetic
{
	function test(uint256 x, uint y) public pure {
		s.y = s.x;
		s.x = 5 + 2 * (s.y);
	}
	function test2(uint256 x, uint y) public pure {
		s.y = s.x;
		s.x = 5 + s.y;
	}
}
