pragma solidity ^0.8.0;
contract SemanticTest8 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = value1.length;
            if (j < 2) {
                incrementValue1();
            }
        }
    }
    function incrementValue1() public {
        uint j = value2.length;
        if (j < 2) {
            incrementValue2();
        }

        uint k = value3.length;
        if (k < 2) {
            incrementValue3();
        }
    }
    function incrementValue2() public {
        value1.push(10);
        value2.push(20);
        value3.push(30);
    }
    function incrementValue3() public {
        value1.pop();
        value2.pop();
        value3.pop();
    }
}
