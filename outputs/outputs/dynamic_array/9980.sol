pragma solidity ^0.8.0;

contract SemanticTest9 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    uint[] public value4;
    constructor () public {
        value1.push(1);
        value2.push(0);
        value3.push(2);
        value4.push(10);
    }
    function printValues() public {
        uint valueCount = 6;
        for (uint i = 0; i < _input.length; i += valueCount) {
            uint valueCountIncrement = valueCount;
            for (uint j = 0; j < valueCountIncrement; j += 1) {
                require(SemanticTest8(msg.sender).isOverflow(i+j));
            }
        }
    }
}
