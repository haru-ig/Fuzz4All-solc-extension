pragma solidity ^0.8.0;
contract Memory4{
    uint[] internal p1;
    uint public p1 = 1;
    function myFunction() public returns (uint[] memory) {
        p1 = memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize();
        return p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 4;
    }
}
contract Memory5{
    uint internal p2;
    uint public p1;
    uint public p0;
    uint public p3;
    uint public p4;
    uint[] internal p5;
    uint[] internal p6;
    uint[] internal p0;
    uint public p0_2 = memoryGetMemorySize() ** 2;
    uint public p4_2 = memoryGetMemorySize() + memoryGetMemorySize();
    constructor(){
        p1 = 1;
        p0 = memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize();
        p2 = memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize();
        p4 = 1;
        p3 = p1;
        p5 = memoryGetMemorySize() + memoryGetMemorySize();
        p6 = memoryGetMemorySize();
        p4 = p1_2;
        p0 = memoryGetStorageSize();
        p3 = memoryGetMemorySize();
        p5 = memoryGetMemorySize();
        p6 = memoryGetMemorySize();
        p4 = memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}
