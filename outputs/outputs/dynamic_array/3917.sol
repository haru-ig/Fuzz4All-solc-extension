pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    function f() public {
        uint[][] memory arrayB = b1;
        b1 = arrayB;
        b1[1][0] = 5;
    }
}
