pragma solidity ^0.8.0;
contract Cast_produced {
    uint8 public i;
    constructor() {
        i = cast();
    }
    uint8 cast() public pure returns (uint8) {
        cast(256, 256, 256, 256, 256, 256);
    }
    function cast(uint8 a, uint8 b, uint8 c, uint8 d, uint8 e, uint8 f) public pure returns (uint8) {
        return a + b + c - d + e - f;
    }
}
