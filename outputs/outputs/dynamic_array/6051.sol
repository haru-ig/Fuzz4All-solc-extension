pragma solidity ^0.8.0;
contract Test29999MutatedTwo {
    uint[] buffer;
    uint[] memory buffer2;
    constructor () public {
        for (uint j = 0; j < 10; j++) {
            buffer2.push(0x00100000);
        }
        buffer = new uint[](10);
        for (uint i = 0; i < buffer.length; i++) {
            buffer[i] = 0x00300000;
            buffer2[i] = 0x00200000;
        }
        buffer2.push(0x00400000);
    }
    fallback () external {
        buffer[0] = 0x00500000;
    }
}
