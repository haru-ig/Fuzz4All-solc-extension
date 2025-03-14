pragma solidity ^0.8.0;
contract C {
    uint[] s1;
    uint[] s2;
    constructor() public {
        s1 = new uint[](1);
        s2 = new uint[](2);
    }
    function f() public {
        s2[0] = s2.pop();
    }
}
