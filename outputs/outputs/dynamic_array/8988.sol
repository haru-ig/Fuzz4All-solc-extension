pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests8 {
    function test() public pure  returns(address[] memory) {
        address[] memory foo = [address(0)];
    }
}



pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9 {
    function test() public pure  returns(bytes[] memory) {
        bytes[] memory foo = new bytes[](2);
    }
}
