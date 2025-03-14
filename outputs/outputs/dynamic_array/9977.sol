pragma solidity ^0.8.0;
contract SemanticTest8 {
    uint[] public value1;
    uint[] internal value2;
    uint[] external value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                value1[j] = value1[j] + 10;
            }
            if (j < value2.length) {
                value2[j] = value2[j] + 20;
            }
            if (j < value3.length) {
                value3[j] = value3[j] + 30;
            }
        }
    }
    function incrementValue1(uint i) public {
        uint j = i;
        value1[j] = value1[j] + 10;
    }
    function incrementValue2(uint i) internal {
        uint j = i;
        value2[j] = value2[j] + 20;
    }
    function incrementValue3(uint i) external {
        uint j = i;
        value3[j] = value3[j] + 30;
    }
}
