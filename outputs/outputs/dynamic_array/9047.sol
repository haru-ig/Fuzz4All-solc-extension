pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests2EMutated{
    function test(uint[] memory input) public mutate {
        uint[] memory bar;
        uint[] memory oldArray = input;
        for(uint i = 0; i < bar.length; i++){
            bar[i] = oldArray[i];
        }
        bar = oldArray;
        oldArray = input;
    }
}
