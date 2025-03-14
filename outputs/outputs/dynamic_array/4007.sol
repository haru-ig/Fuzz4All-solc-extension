pragma solidity ^0.8.0;
contract C {
    bytes32[2] public s1;
    bytes32[2] public s2;

    constructor() public {
        s1[0] = 2;
        s2[0] = 3;
        s2[1] = 4;

    }

    function f() public {
        s1.push(2);
        s2.push(3);

    }
}
