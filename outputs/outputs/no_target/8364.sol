pragma solidity ^0.8.0;
contract NonChecked3 {
    constructor(address) public {
        unchecked {
            uint x = 0xffffffff;
            uint y = uint(uint128x) - x;
        }
    }
}
