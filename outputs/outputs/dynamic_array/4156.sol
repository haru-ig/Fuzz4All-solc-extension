pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public D;
    function f() public {
        uint[] memory x = new uint[](1);
        for (uint i = 0; i < 10; i++) {
            x[i] += 1;
        }
        x[0] += 1;
        x++;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[1] += 1;
            D += 1;
            c++;
        }
    }
}
