pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrectArithmeticV4 {
    constructor(uint t) public {
        while (true) {
        unchecked {
            asm{
                {
                    mstore8(0x04, 0x00)
                    mstore8(0x05, 0x00)
                    mstore8(0x06, 0x00)
                    mstore8(0x07, 0x00)
                    div(0x04)
                }
            }
        }
    }
    uint public x;
    uint public y;
    uint public z = 1000000000;
}
