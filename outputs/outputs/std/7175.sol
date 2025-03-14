pragma solidity ^0.8.0;
contract BitwiseBITNOT {
	function test() public pure {
		uint256 a=0xffff;
		uint256 b;
		b=~0xffff;
		a&=b;
		a=a+1;
		a&=b;
		a^=b;
		a^=a;
		a^=b;
	}
}
