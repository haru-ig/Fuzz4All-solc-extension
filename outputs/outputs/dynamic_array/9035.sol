pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests7D {
    constructor (address[] memory input) public {
        for(uint i = 0; i < input.length; i++){
            input[i] = address(uint(input[i]));
        }
        input[7] = address(uint(input[1]));
    }
    function test(address[] memory input) public pure  {
        address[] memory oldArray = input;
        address[] memory foo;
        for(uint i = 0; i < input.length; i++){
            foo[i] = oldArray[i];
        }
        oldArray = foo;
    }
}
