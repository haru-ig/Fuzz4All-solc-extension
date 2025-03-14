pragma solidity ^0.8.0;
contract test59 {
	uint n;
	function test() public returns (bool) {
		uint[] memory aaa = new uint[](n + 1);
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = 1;
		}
		require((aaa.length > 0) && (aaa.length <= 2));
		return true;
	}
}



pragma solidity ^0.8.0;
contract test60 {
	function test() public returns (bool) {
		uint[] memory aaa = new uint[](10000);
		return false;
	}
}
