pragma solidity ^0.8.0;
contract C {
    uint private c;
    uint[] public D;
    function f() public {
        uint[][] memory x = new uint[5][];
        uint i;
        x[0] = new uint[](4);
        c++;
        for (i = 0; i < 5; i++) {
            x[i] = new uint[](2);
            x[i][0] = 1;
            c++;
            for (uint t1: x[i]) {
                c++;
                d = 1;
            }
            c++;
        }
        x[4] = x[3]+10;
        c++;
    }
}
