pragma solidity ^0.8.0;
contract test59 {
	uint32 internal a59;
    function test() public returns (uint) {
		uint x = a59;
		a59 += 1;
		require (a59 == 2);
		return x;
    }
}

pragma solidity ^0.8.0;
contract test60 {
	uint32 internal a60;
    function test() public returns (uint) {
        uint[] memory aaa = new uint[](a60);
        for (uint i = 0; i < aaa.length; i++) {
            aaa[i] = 1;
        }
        uint len = aaa.length;
        require(len == 65536);
        require(aaa.length == 65536);
        return aaa.length;
    }
}
