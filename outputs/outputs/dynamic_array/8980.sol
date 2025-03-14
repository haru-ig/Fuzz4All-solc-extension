pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests7 {
    function test() public pure returns(address[] memory) {
		return new address[](2);
    }
}

pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests8 {
    function test() public pure returns(address[] memory) {
		address[] memory r1 = new address[](2);

		delete r1[1];

		address[] memory r2 = new address[](2);
		r2[1] = address(1);

		address[] memory r3 = new address[](2);
		r3[0] = address(3);
		r3[1] = address(4);

        return r3;
    }
}
