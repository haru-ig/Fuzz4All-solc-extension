pragma solidity ^0.8.0;
contract Memory6{
    uint public p0;
    uint public p1;
    uint public p2;
    uint public p3;
    uint public p4;
    uint public p5;
    uint public p6;
    uint public p7;
    uint public p8;
    constructor(){
        p0 = 0;
        p1 = 0;
        p2 = 0;
        p3 = 0;
        p4 = memoryGetStorageSize() * 4;
        p5 = p3 + p4 + memoryGetMemorySize();
        p6 = p5 + memoryGetMemorySize();
        p7 = p6 + memoryGetMemorySize();
        p8 = p7 + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint) {
        return 16;
    }
    function memoryGetStorageSize() public pure returns(uint) {
        return 8;
    }
}
