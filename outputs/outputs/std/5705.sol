pragma solidity ^0.8.0;
contract Mutate2 {
    uint private p0;
    uint public p1;
    constructor(){
        p0 = p0 + 1;
        p1 = p1 + p0 * 1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}
