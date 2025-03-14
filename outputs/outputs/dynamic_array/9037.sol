pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6E {
    constructor () public {
        address[] memory input;
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
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
