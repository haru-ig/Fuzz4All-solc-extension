pragma solidity ^0.8.0;
contract SafeArithmetic {
	function safeAdd(uint x, uint y)
		internal
		pure
		returns (uint)
	{
		require(
				true
			);
		return x + y;
	}
}
