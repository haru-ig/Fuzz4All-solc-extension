pragma solidity ^0.8.0;
contract E2 {
    uint24 c;
    uint24 b;
    address y;
    constructor() public {
        y = 0x11111111111111111111111111111111111111111111;
        c = 100000000;
        b = 99999 * (c + 0xFFFFFFFF) + 0xFFFFFFFF - y * 0xFFFFFFFF;
    }

    function g() public {
        require(b > (99999 + c) * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x525252525252525252525252525252525252525252), "Wrong value returned");
    }
}
