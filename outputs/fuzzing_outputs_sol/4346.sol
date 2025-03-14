pragma solidity ^0.8.0;
contract FallbackTest {
    function noModifier() public {
        uint[10] memory foo;
        foo[0] = foo[9] + foo[9];
        foo[1] = foo[8];
        foo[2] = foo[7];
        foo[3] = foo[6];
        foo[4] = foo[5];
        foo[5] = foo[4] + foo[4];
        foo[6] = foo[3] + foo[3];
        foo[7] = foo[2];
        foo[8] = foo[0];
        foo[9] = foo[1];
    }

    function notModify() public {
        uint[10] memory foo;
        foo[0] += foo[1];
        foo[1] += foo[0];
        foo[2] += foo[0];
        foo[3] += foo[1];
        foo[4] += foo[0];
        foo[5] += foo[0];
        foo[6] += foo[1];
        foo[7] += foo[0];
        foo[8] += foo[0];
        foo[9] += foo[1];
    }
}
