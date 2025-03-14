pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6A {
    function test(address[] calldata input) public pure  {
        address[] memory foo;
        foo = input;
    }
}
