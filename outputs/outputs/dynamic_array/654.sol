pragma solidity ^0.8.0;
contract test59 {
	uint[] public a59 = new uint[](20);
	uint256 public b59 = a59.length;
    function test() public returns (uint) {
		require(b59==20);
		a59.length = 21;
		require(b59==21);
		require(a59[6]==b59);
		return (a59.length);
    }
}
