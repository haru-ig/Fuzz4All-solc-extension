pragma solidity ^0.8.0;
contract Memory4{
    uint public p0;
    uint public p1;
    uint public p2;
    uint public p3;
    constructor(){
        p0 = memoryGetStorageSize();
        p1 = memoryGetStorageSize() + memoryGetMemorySize();
        p2 = p1 + memoryGetMemorySize();
        p3 = p2 + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint) {
        return 13;
    }
    function memoryGetStorageSize() public pure returns (uint) {
        return 6;
    }
}
contract Memory5{
    uint public p0;
    uint public p1;
    uint public p2;
    uint public p3;
    uint public p4;
    uint public p5;
    uint public p6;
    constructor(){
        p0 = p1 = p2 = memoryGetStorageSize() * 4;
        p1 = p0 + p1;
        p2 = p1 + memoryGetMemorySize();
        p3 = p2 + memoryGetMemorySize();
        p4 = p3 + memoryGetMemorySize();
        p5 = p4 + memoryGetMemorySize();
        p6 = p5 + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint) {
        return 15;
    }
    function memoryGetStorageSize() public pure returns(uint) {
        return 2;
    }
}
