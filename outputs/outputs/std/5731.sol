pragma solidity ^0.8.0;
contract Memory7 {
    uint public p0;
    uint public p1;
    uint public p4;
    uint public p5;
    uint public p9;
    uint public p10;
    constructor(){
        p0 = 10;
        p1 = 20;
        p4 = memoryGetStorageSize() * 4;
        p5 = p4 + p9 + memoryGetMemorySize();
        p9 = p5 + memoryGetMemorySize();
        p10 = p9 + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint) {
        return 16;
    }
    function memoryGetStorageSize() public pure returns(uint) {
        return 8;
    }
}
