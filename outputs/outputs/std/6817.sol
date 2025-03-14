pragma solidity ^0.8.0;
contract B5468A087F9B7335D7B6915945BCC1299A63E93F
{
	uint public a = 3;
	uint256 _b = 0;
	function foo(uint _a) external returns (uint256) {
		a.mul(a).add(_a);
		_b += a;
		_b *= _b;
		_b += a;
		_b *= _b;
		return _b;
	}
}
