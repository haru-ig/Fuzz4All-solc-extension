pragma solidity ^0.8.0;
interface AssignmentModulation_V6_Semantic_10 {
    function doWork()
            external
            pure;
}
contract AssignmentModulation_V9_Semantic{
    uint public a;
    uint public b;
    uint[] public x;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
    }
    function doWork() public pure returns (uint){
        return x[0];
    }
}
pragma solidity ^0.8.0;
interface AssignmentModulation_V5_Semantic_2 {
    function doWork() external;
}
contract AssignmentModulation_V7_Semantic{
    uint public a;
    uint public b;
    uint[] public x;
    uint z;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](3);
        x[0] = 0;
        x[1] = 0;
        x[2] = 0;
    }
    function doWork() public {
        z = x[1];
    }
}

pragma solidity ^0.8.0;
interface AssignmentModulation_V5_Semantic_3 {
    function doWork(uint[] memory x_)external;
}
contract AssignmentModulation_V6_Semantic{
    uint[] public x;
    constructor () public {
        x = new uint[](3);
        x[0] = 0;
        x[1] = 0;
        x[2] = 0;
    }
    function doWork(uint[] memory x_) public{
        x[2] = x_[2];
    }
}
