pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6G {
    constructor () public {
        address[] memory input;
        for(uint i = 0; i < 2; i++){
            input[i] = msg.sender;
        }
    }
    function test(address[] memory input) public pure  {
        address[] memory oldArray;
        address[] memory foo;
        oldArray = input;
        for(uint i = 0; i < input.length; i++){
            foo[i] = oldArray[i];
        }
        foo = oldArray;
    }
}





contract SemanticSolidityArrayAbiConversionTests6I {

contract SemanticSolidityArrayAbiConversionTests6J {
    function initialize() public {
        address[] memory input;
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
        test(input);
    }
    function test(address[] memory input) public pure {
        input = input;
    }
}




contract SemanticSolidityArrayAbiConversionTests6L {

contract SemanticSolidityArrayAbiConversionTests6N {
    function initialize() public {
        address[] memory input;
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
        test(input);
    }
    function test(address[] memory input) public pure {
        input.push(msg.sender);
        input[input.length-1] = msg.sender;
        input.pop();
        input.push(msg.
