pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_3 {
    uint x = 0;
    constructor (uint _init) public {
        x = _init;
    }
    function doWork() public returns(uint){
        return x;
    }
}
