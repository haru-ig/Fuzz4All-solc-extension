pragma solidity ^0.8.0;
contract test58 {
	uint[] public a58 = new uint[](20);
	uint256 public b58 = a58.length;
    function test() public returns (uint) {
		require(a58.length==20);
		a58[6] = b58;
		require(a58.length==21);
		require(a58[6]==b58);
		return (a58.length);
    }
}
