pragma solidity ^0.8.0;
contract C {
    uint[][][] public s1;
    uint[][][] public s2;
    constructor() public {
        s1.push([[1]]);
        s1[0][0][3] = 3;
        s1[0].push([]);
        s1[0].push([]);
    }
    function f() public {
        s2.push([[4]]);
        s2[0][0][3] = 3;
        s2[0].push([]);
        s2[0].push([]);
    }
}
