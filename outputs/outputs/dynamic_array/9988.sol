pragma solidity ^0.8.0;
contract SemanticTest7 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        uint length = 0;
        value1.length;
        for (uint i = 0; i < 100; i += 10) {
            length += 10;
            value1.push(i);
            value2.push(0);
            value3.push(0);
        }
        value1.length += 10;
        value2.length += 10;
        value3.length += 10;
    }
    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        uint index = i.mod(value1.length + 2);
        if (index == 0) {
            index = 1;
        } else if (index == 1) {
            index = 0;
        } else {
            ret = true;
        }
        bool ret1;
        if (i < value1.length) {
            ret1 = value1[i]!= 0;
        } else {
            ret1 = false;
        }
        return ret1 && ret;
    }
}

pragma solidity ^0.7.0;
contract SemanticTest12 {
    uint[] public value1;
    uint[] public value2;
