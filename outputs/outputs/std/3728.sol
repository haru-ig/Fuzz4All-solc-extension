pragma solidity ^0.8.0;
contract Convert {
    uint256[5] public numberArray;
    uint32[2] public numberArrayArray;
    constructor() {
        uint256 x0;
        uint8 y;
        uint32 z0;
        uint32 z1;
        x0 = convertUint256ToBytes(uint256(0));
        y = convertBytesToUint256(x0);
        numberArrayArray[0] = uint32(y);
        uint256 x1;
        x1 = bytes2uint256("0x00");
        numberArrayArray[1] = bytes2uint256(x1);
    }
    function convertUint256ToBytes(uint256 x) public pure returns (bytes memory) {
        bytes memory y = new bytes(32);
        uint256 x1 = x % 256;
        for (uint8 i = 0; i < 32; i++) {
            y[31 - uint8(uint256(x * 2**8 + x1) / 256**i)] = bytes1(uint8(x1));
            x1 = x / 256;
        }
        return y;
    }
    function convertBytesToUint256(bytes memory x) public pure returns (uint256) {
        bytes1 x0;
        bytes1 x1;
        bytes memory y = new bytes(0);
        for (uint8 i = 0; i < 32; i++) {
            x0 = bytes1(uint8(uint256(x[31 - i]) % 256));
            if (i < 128) {
                y = bytes(uint256(uint8(x1)) * 256**uint32(i));
            }
            x1 = bytes1(uint8(uint256(x[31 - i]) / 256));
        }
        return castToUint256(y, 0, 32);
    }
    function castToUint256(bytes memory y, uint8 x, uint8 yend) public pure returns (uint256) {
        uint256 z;
        for (uint8 j = 0; j < yend; j++) {
            z = uint256(safeZeroAdd(z, y[x + j]));
        }
        return z;
    }
}
