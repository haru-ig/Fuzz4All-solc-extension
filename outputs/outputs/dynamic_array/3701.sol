pragma solidity ^0.8.0;
contract D {
    mapping(uint16 => uint16) m;
    constructor(uint16 b) {
        m[b];
    }
    function f() public {
        for (uint16 x = 0; x < 10; x++) {
            uint16 y = m[x];
            m[x] = y + x;
        }
    }
}
