pragma solidity ^0.8.0;
contract C {
    uint c;
    uint D;
    uint[] memory x = new uint[](16);
    function f() public {
        x[1] += x[0];
        x[3] = 2;
        D = 2;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[i+2] += 1;
            D += 1;
            c++;
        }
    }
}
