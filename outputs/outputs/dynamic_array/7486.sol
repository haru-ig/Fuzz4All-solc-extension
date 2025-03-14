pragma solidity ^0.8.0;
contract Test14 {
    enum Test {
        VALUE0,
        VALUE1
    }
    Test public test;
    uint private a;
    uint8 value3;

    constructor () public {
        value3 = 3;
    }
    function test() public {
        if (test == Test.VALUE0) {
            value3 -= 1;
        }
        if (test == Test.VALUE0) {
            delete test;
        }
    }
}
