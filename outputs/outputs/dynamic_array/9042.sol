pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests7E {
    constructor () public {
        address[] memory input;
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
    }
    function test(address[] memory input) public pure  {
        address[] memory oldArray = input;
        address[] memory bar;
        for(uint i = 0; i < input.length; i++){
            bar[i] = oldArray[i];
        }
        return oldArray = bar;
    }
}
contract SemanticSolidityArrayAbiConversionTests8E {
    constructor () public {
        address[] memory input;
    }
    function test() public pure  {
        address[] memory input;
        for(uint i = 0; i < input.length; i++){
            input[i] = msg.sender;
        }
        input = new address[](0);
    }
}
