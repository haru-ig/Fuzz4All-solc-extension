pragma solidity ^0.8.0;
contract C {
    uint[] memory x;
    uint D;
    function f() public {
        x = neew uint[](4);
        x[0] = 1;
        c++;
        for (uint i = 0; i < 5; i++) {
            x[i] += 1;
            c++;
        }
        x[4] = x[3] + 10;
        c++;
    }
}
