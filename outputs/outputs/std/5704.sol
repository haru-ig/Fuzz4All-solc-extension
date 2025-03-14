pragma solidity ^0.8.0;
contract Memory3{
    uint private p0;
    uint public p1;
    constructor(){
        p0 = p0 + p1;
        p1 = p0 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return (uint(p1) - (uint(memoryGetMemorySize())));
    }
}
