pragma solidity ^0.8.0;
contract Memory1{
    uint public p0;
    uint private p1;
    uint public p2;
    uint public p3;
    constructor(){
        p0 = 2;
        p1 = 1;
        p2 = 1;
        p3 = p0 - 1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return uint(2);
    }
}
