pragma solidity ^0.8.0;
contract SemanticTest10 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            value1[i] = i;
            value2[i] = i;
            value3[i] = i;
        }
        uint index = 0;
        for (uint i = 0; i < (value1.length - 1); i += 2) {
            value1[index] = value1[i + 1];
            value2[index] = value1[i + 2];
            value3[index] = value1[i + 3];
            index += 1;
        }
    }
    function isOverflow(uint[] memory v1, uint i) public view returns (bool) {
        bool ret;
        if (v1[i]!= index + 1) {
            uint val = v1[i];
            ret = v1[i]!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}
