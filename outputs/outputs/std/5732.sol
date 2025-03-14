pragma solidity ^0.8.0;
contract Memory8{
    uint public p0;
    uint public p1;
    uint public p2;
    uint public p3;
    uint public p4;
    uint public p5;
    uint public p6;
    uint public p7;
    uint public p8;
    uint public p9;
    uint public p10;
    uint public p11;
    uint public p12;
    uint public p13;
    uint public p14;
    uint public p15;
    constructor(){
        p0 = 0;
        p1 = 0;
        p4 = memoryGetStorageSize() * 4;
        p5 = p4 + p7 + memoryGetMemorySize();
        p6 = p5 + memoryGetMemorySize();
        p7 = p6 + memoryGetMemorySize();
        p8 = p7 + memoryGetMemorySize();
        p9 = p8 + memoryGetMemorySize() * 2;
        p10 = p9 + memoryGetMemorySize();
        p11 = p10 + memoryGetMemorySize();
        p12 = p11 + memoryGetMemorySize();
        p13 = p12 + memoryGetMemorySize();
        p14 = p13 + memoryGetMemorySize();
        p15 = p14 + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint) {
        return 16;
    }
    function memoryGetStorageSize() public pure returns(uint) {
        return 8;
    }
}
