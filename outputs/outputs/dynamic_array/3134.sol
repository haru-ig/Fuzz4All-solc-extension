pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_8 {
    uint[] public x;
    uint public a;
    uint public b;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
     }
}
