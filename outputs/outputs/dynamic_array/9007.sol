pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9B {
    function test(address[] memory input) public pure returns(address[0] memory){
        address[] memory foo;
        foo = input;
    }
}
contract SemanticSolidityArrayAbiConversionTests9C {
    function test(address[0] memory input) public pure {
        address[] memory foo;
        foo = input;
    }
}
