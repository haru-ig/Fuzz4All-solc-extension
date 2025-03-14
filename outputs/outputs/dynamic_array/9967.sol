pragma solidity ^0.8.0;
contract SemanticTest6 {
    uint[] public value;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            value.push(i * 100 - 10);
        }
    }
    function incrementValue(uint i) public {
        uint j = i;
        if (j < value.length) {
            value[j] = value[j] + 10;
        }
    }
    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value.length) {
            ret = value[i]!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}
