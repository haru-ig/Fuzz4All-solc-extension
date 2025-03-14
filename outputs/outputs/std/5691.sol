pragma solidity ^0.8.0;
contract Memory0{
    uint private p0;
    uint public p1;
    constructor(){
        p0 = memoryGetMemorySize() ** 2;
        p1 = p0 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}
