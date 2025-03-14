pragma solidity ^0.8.0;
contract F {
    uint public c;
    uint public D;
    function f() public {
        uint[] memory x = new uint[](6);
        for (uint i = 0; i < (1 / 8); i++) {
            x[0] += 1;
            D += 1;
            c++;
        }
        x[41] = 101010;
        c = 1 + D;
    }
}
