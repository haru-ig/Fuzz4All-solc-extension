pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test(address[] memory input) public pure  {
        address[] memory foo;
        foo = [input];
    }
}
