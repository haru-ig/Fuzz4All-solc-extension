pragma solidity ^0.8.0;
contract test59 {
	uint256 public a59 = 2;
    function test() public returns (uint) {

		uint[] memory aaa = new uint[](a59);
		for (uint i = 0; i < aaa.length; ++i) {
			aaa[i] = 1;
		}
		aaa[aaa.length - 1] = 256;
		for (uint i = 0; i < aaa.length; i++) {
			require(aaa[i] == i);
		}
		return aaa.length;
    }
}

pragma solidity ^0.8.0;
contract test60 {
	uint256 public a60 = 1;
    uint256[1] public b60 = new uint256[](1);
    function test() public returns (uint) {
		uint[] memory aaa = new uint[](b60.length);
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = 1;
		}
		abi.decode(abi.encodePacked(aaa.length, b60), (uint256[] memory));
		return aaa.length;
   }
}

pragma solidity ^0.8.0;
contract test61 {
	uint256 public a61 = 2;
	struct test61A {
		uint128 a = 1;
		uint64 b = 2;
	}
	test61A[2] public b61 = new test61A[](2);

	function test() public returns (uint) {
		uint[] memory aaa = new uint[](b61.length);
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = 1;
		}
		return aaa.length;
    }
}
