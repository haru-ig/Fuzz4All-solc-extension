pragma solidity ^0.8.0;
contract C {
    uint c;
    function f() public {
        uint[] memory x = new uint[](4);
        uint i;
        x[0] = 1;
        c++;
        for (i = 0; i < 5; i++) {
            x[i] += 1;
            x[i] %= 4;
            if (x[i] == 0) {
                C[] memory y = new C[](2);
                uint z;
                z = y[0].f();
            }
            c++;
        }
        x[4] = x[3] + 10;
        c++;
    }
}
