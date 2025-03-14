pragma solidity ^0.8.0;
contract AssignmentModulation_V5_Modifie{
    uint public a;
    uint public b;

    uint[] memory x;
    uint[] public x1;
    uint[] public x2;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;




        require(x[1] >= 0 && x[1] <= 9, "Negative number");
    }
    function doWork1() public returns (uint){
        b = 10;
        a = 100000;
        if (a == 100000 && b == 10){
            x1 = new uint[](2);
            x1[0] = 1;
            x1[1] = 1;
        }
        else{
            x1 = new uint[](2);
            x1[0] = 1;
            x1[1] = 1;
        }
        x[0] = 125;
        x[1] = 125;
        require(x[1] >= 0 && x[1] <= 9, "Negative number");
        return x[x2];
    }
    function modifiedDoWork() public returns (uint){
        b = 1
