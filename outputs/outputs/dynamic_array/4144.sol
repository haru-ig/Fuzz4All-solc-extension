pragma solidity ^0.8.0;
contract C {
    uint c;
    uint D;
    function f() public {
        uint[] memory x = new uint[](2);
        D = 2;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[i] += 1;
            D += 1;
            c++;
        }
        x[1] = x[1] + x[0];
        c++;
    }
}
