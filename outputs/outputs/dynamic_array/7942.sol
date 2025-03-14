pragma solidity ^0.8.0;
contract Test31 {
    fixed3[5] public ids;
    uint i = 500;
    constructor() {
        for (i = 0; i < 23; i++) {
            ids[i] = 0x10 - i;
        }
        ids[8] = i;
        ids[3] = 0xF;
    }
}
