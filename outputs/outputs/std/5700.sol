pragma solidity ^0.8.0;
contract Memory1{
    uint public p0;
    uint private p1;
    constructor(){
        p0 = memoryGetMemorySize() ** 3;
        p1 = p0 + p1;
    }
}
