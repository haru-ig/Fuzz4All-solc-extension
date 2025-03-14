pragma solidity ^0.8.0;
 contract Mutate16 {
    Mutate11 x1;
    bool yTrue;
    uint y;
    uint8 yByte;
    uint16 yHalf;
    uint24 y48;
    bytes4 y160;
    bytes32 y224;
    bytes46 y1024;
    function () external {
        x1.x = x1.x + x1.x;
        yTrue =!(yTrue);
        y = (y+y) + y;
        yByte = (yByte << yByte >> 65) & 0xF;
        yHalf = (yHalf << yHalf >> 82) & 0xFFF;
        y48 = (y48 << 194) | (y48 >> 1) & 0xFFFFFFFFFFF;
        y160 = (bytes46(keccak256("Hello")) << 3545 == bytes46(keccak256("Hello"))) & bytes46("Hello");
        y224 = keccak256("Hello");
    }
}
