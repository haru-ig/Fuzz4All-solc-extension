pragma solidity ^0.8.0;
contract C1 {
    uint32 public value;
    uint8[3] public bytes1;
    bytes1[2] public bytes2;
    uint256[][][] public bytes3;
    constructor () public {
        uint256[][][][1][][3][] public [][][][] = [[[14]]];
        bytes1[2].push(0xfe);
        uint32 i;
        for (i=0; i<bytes1.length; i++) {
            bytes1[i].extend(bytes2[0][23]);
        }
        bytes1[1] = [0x78, 0x37];
        bytes1[0].extend(bytes2[1][255]);
        for (i=0; i<bytes1.length; i++) {
            bytes2[0][0] = bytes1[0];
        }
        for (i=0; i<bytes1.length; i++) {
            bytes2[i][23] = bytes2[i][23];
        }
    }
}
