pragma solidity ^0.8.0;
contract C {
    uint[] public s;
    constructor(uint _x) {
        s = [_x, 5...];
    }
    function f() public {
        s[0] = 3;
    }
}
