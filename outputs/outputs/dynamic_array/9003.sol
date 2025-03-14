pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests10 {
    function test(address[] memory input) public pure  {
       input[3] = 99;
    }
}
