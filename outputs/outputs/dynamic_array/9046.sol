pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests2F {
    function test(uint[] memory input) public pure  {
        uint[] memory oldArray = input;
        uint[] memory bar;
        for(uint i = 0; i < oldArray.length; i++){
            bar[i] = i;
        }
        oldArray = bar;
    }
}
