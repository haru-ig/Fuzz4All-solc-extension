pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    address[] memory addresses;
    function test() public pure {
        bytes32[] memory bytes32s;
        bytes32s = addresses;
    }
}
