pragma solidity ^0.8.0;
contract C {
    uint[6] public s1;
    uint[6] public s2;
    constructor() public {
        s1[0] = 1;
        for (uint i = 1; i < 6; i++)
            s2[i] = s1[i-1] + 1;
    }
    function f() public {
        s2[6].push(4);
    }
}
