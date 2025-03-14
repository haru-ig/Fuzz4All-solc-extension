pragma solidity ^0.8.0;
contract SemanticTest5 {
    struct Point {
        uint128 x_;
        uint128 y_;
    }
    uint128[] public value;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            value.push(i * 100 - 10);
        }
    }
    function incrementValue(uint i) public {
        uint j = i;
        uint128[] memory _values = value;
        if (j < value.length) {
            value.length = j + 1;
            for (uint k = j; k < value.length; k += 1) {
                value[k] = _values[k];
            }
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
