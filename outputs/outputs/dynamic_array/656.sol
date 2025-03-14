pragma solidity ^0.8.0;
contract test58a {
	uint256 a58 = 11;
    function test() public returns (uint256) {
		uint[10] memory aaa = new uint[a58 + 1];
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = 1;
		}
		require(aaa.length == a58 + 1);
		return aaa[a58];
    }
}
