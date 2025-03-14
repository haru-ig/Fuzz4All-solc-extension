pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_9 {
    uint[] public x;
    struct Data {
        uint64 A;
        uint64 B;
    }
    constructor () public {
        a = 0;
        b = 100;
        x = new Data[](2);
        x[0].A = 0;
        x[0].B = 0;
        x[1].A = 0;
        x[1].B = 0;
    }
    function doWork() public returns(uint){
        return x[0].A;
     }
}
