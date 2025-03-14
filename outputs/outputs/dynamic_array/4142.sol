pragma solidity ^0.8.0;
contract C {
    uint c;
    uint D;
    function f() public {
        uint[4] memory x = new uint[](4);
        D = 2;
        c++;
        for (uint i = 1; i < 5; i++) {
            x[i] += 1;
            D += 1;
            c++;
        }
        x[3] = x[0] + D;
        c++;
    }
}
