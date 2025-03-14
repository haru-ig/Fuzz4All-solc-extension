pragma solidity ^0.8.0;
contract test58 {
	uint256 public a58 = 2;
    function test() public returns (uint) {
		uint[] memory aaa = new uint[](a58 + 1);
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = 1;
		}
		require(aaa.length == a58 + 1);
		return aaa.length;
    }
}
