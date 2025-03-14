pragma solidity ^0.8.0;
contract AssignmentModulation_V3_Dynamic_Array{
    uint public a;
    uint public b;
    uint[] internal newArray;
    uint[] public x;
    uint public x1;
    uint[] public x2;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](3);
        x[0] = 1;
        a = 1;
        a = 1;
        x[1] = 2;
        x[2] = 3;
        x[2] = 2;
        x[2] = 1;
        x1 = 42;
        x2 = new uint[](1);
        x2[0] = 0;
        x2[0] = 0;
        x1 += 1;
        x2[0] += 1;
    }
    function doWork() public returns(uint[]){
        newArray = new uint[](5);
        newArray[0] = 5;
        newArray[1] = 5;
        newArray[2] = 5;
        newArray[3] = 5;
        newArray[4] = 5;
        return newArray;
    }
}
