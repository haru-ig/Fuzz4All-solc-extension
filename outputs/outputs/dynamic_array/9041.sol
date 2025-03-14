pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests2E {
    function test(uint[] memory input) public pure  {
        uint[] memory oldArray = input;
        uint[] memory bar;
        for(uint i = 0; i < input.length; i++){
            bar[i] = oldArray[i];
        }
        oldArray = bar;
    }
}
