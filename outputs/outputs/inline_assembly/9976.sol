pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    constructor() public {
        i = uint8(0);
        x = uint8(0);
    }
    function test() public {
        i = uint8(127);
        x = uint8(127);
        i = uint8(x);
        x = i + x;
        x = i + x;
        x = i + x;
    }
}
