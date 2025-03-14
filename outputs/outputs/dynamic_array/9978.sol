pragma solidity ^0.8.0;
contract SemanticTest8 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 5; i += 1) {
            uint j = i;
            value1[j] = value1[j] + 10;
            value2[j] = value2[j] + 20;
            value3[j] = value3[j] + 30;
        }
    }
    function incrementValue(uint i) public {
        value1[i] = value1[i] + 10;
        value2[i] = value2[i] + 20;
        value3[i] = value3[i] + 30;
    }
    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value1.length) {
            ret = value1[i]!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}
