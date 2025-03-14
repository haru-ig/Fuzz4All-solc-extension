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
            }
            value1.push(j < value2.length? value2[j] : 20);
            value1.push(j < value3.length? value3[j] : 30);
        }
    }
    function isOverflow(uint i) public view returns (bool) {
        uint j;
        bool ret;
        if (i < value1.length) {
            j = i + 1;
            ret = value1[j]!= 0;
        }
        return ret;
    }
}
