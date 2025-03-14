pragma solidity ^0.8.0;
contract MutatedMemory{
    uint public p0;
    uint public p1;
    uint public p3;
    uint public p2;
    uint public p4;
    uint public p6;
    bytes public p7;
    uint public _n;
    constructor(){
        uint r0;
        uint r1;
        uint r3;
        uint r2;
        uint r4;
        uint r6;
        uint r7;
        uint r11;
        r0 = 0;
        r3 = 0;
        r1 = 1;
        r2 = 2;
        r4 = 2;
        r6 = 1;
        r7 = 8;
        r11 = 3;
        p0 = r0 * r3;
        p1 = r0 * r1;
        p3 = r2 * r4 + r6;
        p2 = r3 * r5 + r7;
        p4 = (r4 + r11) * (r4 + 1);
        p6 = (r1 * (r4 + r7) + r7) * (r1 * (r1 + 3) + r2 + 1);
        p7 = new bytes(2^256);
        p7[r0] = 1;
        _n = memoryGetMemorySize();
        p7[r1] = 2;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 11;
    }
    function memoryGetStorageSize() public pure returns (uint){
        return 1;
    }
}
