pragma solidity ^0.8.0;
contract G {
    uint8 bytes_1;
    uint8 bytes_2;
    constructor() public {
        x = 248;
    }
    function test() public {
        bytes_1 = uint8(0);
        bytes_2 = uint8(0);
        x += bytes_1;
        x += bytes_2;
        x += uint8(127);
        x += bytes_2;
        x += uint8(127);
        x += bytes_1;
    }
}
