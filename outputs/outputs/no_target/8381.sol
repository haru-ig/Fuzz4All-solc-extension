pragma solidity ^0.8.0;
contract Unsafe4 {
    uint8 b;
    constructor() public {
        b = uint8(256);
    }
    function f() public {
        b = 255;
    }
}
