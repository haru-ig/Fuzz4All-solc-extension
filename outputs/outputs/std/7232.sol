pragma solidity ^0.8.0;
contract Arithmetic
{
	S S;
	function test() public pure {
	  S.x = 5;
	  S.y = 2;
	  S.x = 5 + 2 * (S.y);
	}
}
