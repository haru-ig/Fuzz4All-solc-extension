pragma solidity ^0.8.0;
contract Memory1 is Memory0{
    uint public m;
    constructor(){
        uint x = memoryGetMemorySize();
    }

    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }

    modifier memory(){
        uint x;
        assembly{x := m}
        _;
    }
    function memoryGetMemorySize1() public memory returns(uint){
        return 8;
    }
}
