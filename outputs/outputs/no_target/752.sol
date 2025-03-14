pragma solidity ^0.8.0;
contract RevertTestsemantics {
	RevertTestsemanticsImperfectArithmetic a;
	function test() public pure
		returns (bool)
	{
		uint b = add2(18);
		uint c;
		c = b + 1;
		uint d = b + add2(c);
		return d - b!= c + 1;
	}
}
