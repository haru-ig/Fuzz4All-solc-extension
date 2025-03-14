pragma solidity ^0.8.0;
interface AssignmentModulation_V2_Semantic_10 {
    function doWork() external returns(uint);
}
contract AssignmentModulation_V5_Semantic{
    uint public a;
    uint public b;
    uint[] public x;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
    }
    function doWork() public returns (uint){
        return x[2];
    }
}


pragma solidity ^0.8.0;
interface AssignmentModulation_V2_Semantic_11 {
    function doWork() public returns(uint);
}

contract AssignmentModulation_V5_Semantic{
    uint public a;
    uint public b;
    uint[] public x;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
    }
    function doWork() public returns (uint){
        return x[2];
    }
}
