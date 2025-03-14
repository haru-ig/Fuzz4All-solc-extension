pragma solidity ^0.8.0;

contract MemoryMutation1{
    uint public p0;
    uint internal p1;
    uint public p2;
    function memoryGetStorageSize() public pure returns (uint){
        return 8;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
    constructor(){
        p0 = p1 = p2 = memoryGetStorageSize() + p1;
        p1 = p0 + p2;
    }
    function memoryAddP1() public pure returns (uint){
        return 18;
    }
    function memorySubtractP1() public pure returns (uint){
        p1 = p1 - p0;
        return 20;
    }
    function memoryMultiplyByP1() public pure returns (uint){
        return p1 + p1 + p2;
    }
}
contract MemoryMutation2{
    uint public p1;
    uint public p0;
    uint internal p2;
    constructor(){
        p1 = p0 = memoryGetMemorySize() + p1;
        p2 = p1 + p1;
    }
    function memoryGetData() public pure returns (uint){
        return 2;
    }
    function memorySubtractP0() public pure returns (uint){
        p1 = p0;
        p0 = 100;
        return p1 + p2;
    }
    function memoryMultiplyByP1() public pure returns (uint){
        p1 = 10;
        p2 = p1 + p0 + p1;
        return p1 * p1 + p1 + p2;
    }
}

pragma solidity ^0.8.0;

contract MemoryMutation3{
    uint public p1;
    uint public p0;
    uint public p2;
    constructor(){
        p0 = p1 = memoryGetMemorySize() + p1;
        p1 = p2 = memoryGetMemorySize() + p2;
        p2
