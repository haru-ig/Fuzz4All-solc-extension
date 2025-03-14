pragma solidity ^0.8.0;
interface AssignmentModulation_V3_Semantic_9 {
    function doWork() external returns (uint);
}
contract AssignmentModulation_V3_Semantic2{
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
        x1 = 0;
    }
    function doWork() public returns (uint){
        a += 3;
        return x[0];
    }
}
contract AssignmentModulation_V4_Semantic3{
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    constructor () public {
        a = 0;
        b = 0;
        uint[] memory b;
        b = new uint[](2);
        b[0] = 0;
        b[1] = 0;
        x = b;
        x1 = 0;
    }
    function doWork() public returns (uint){
        return x[0];
    }
}
contract AssignmentModulation_V6_Semantic4{
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    uint[] public x2;
    uint public x3;
    uint[] public x4;
    uint public x5;
    uint[] public x6;
    uint public x7;
    uint[] public x8;
    uint[] public x9;
    uint public x10;
    uint[] public x11;
    uint[] public x12;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0;
        x1 = 0
