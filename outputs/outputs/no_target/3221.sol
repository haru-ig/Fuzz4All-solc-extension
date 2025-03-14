pragma solidity ^0.8.0;
contract eight {
    uint8 a;
    uint8 b;
    constructor() public
    {
        a = 3;
        b = 2;
    }
    function c() public
    {
        uint8 y;
        assembly {
            y := mstore(add(0x10, 8), 2)
        }
        uint8 x;
        assembly {
            y := add(0x10, 8)
        }
    }
}
