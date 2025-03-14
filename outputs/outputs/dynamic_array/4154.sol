pragma solidity ^0.8.0;
contract D {
    uint public c;
    uint public D;
    function f() public {
        uint[] memory x = new uint[](1);
        x[0] = 1;
        D = 2;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[0] += 1;
            D += 1;
            c++;
        }
        x[0] = 1 + x[0];
        D = 2 + D;
        c--;
    }
}
contract E {
    uint public c;
    uint public D;
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
