pragma solidity ^0.8.0;
contract SemanticTest10 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                value1[j] += 10;
                value2[j] -= 1;
            }
            if (j < value2.length) {
                value2[j] += 20;
                value3[j] -= 2;
            }
            if (j < value3.length) {
                value3[j] += 30;
                value1[j] -= 1;
            }
        }
    }
    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value1.length) {
            ret = value1[i] % 12!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}


pragma solidity ^0.8.0;
contract SemanticTest11 {
    uint public constant value1 = 0xF784D0097CAE3064D1C67B5B9EF2366D4C91CA9C499E8DF22A
