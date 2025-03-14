pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests8 {
    function test2() public pure returns(address[] memory) {
        address[] memory foo = new bytes(4 * 6);
    }
}
