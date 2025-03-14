pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    address[] a = [bytes{8}.concat(bytes{5}), address(this)];
    bytes[] memory out = [bytes{8}.concat(bytes{5}), out.pop()];
}
