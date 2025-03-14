pragma solidity ^0.8.0;
contract C {
    uint public D;
    function f() public {
        uint[] memory x = new uint[](4);
        uint i;
        x[0] = 1;
        c++;
        for (i = 0; i < 5; i++) {
            x[i] += 1;
            c++;
        }
    }
}
