pragma solidity ^0.8.0;
contract C {
    uint c;
    function f() public {
        uint x = 5;
        uint[] memory x2 = new uint[](4, x);
        c++;
        for (uint i = 1; i < 5; i++) {
            c++;
            x2[0] = i;
            c++;
            x2[0] += x;
            c++;
        }
    }
}
