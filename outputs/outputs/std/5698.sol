pragma solidity ^0.8.0;
contract Memory1{
    uint private p0;
    uint public p1;
    constructor(){
        p0 = 100;
        p1 = p0 ** 2;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return p0;
    }
}
