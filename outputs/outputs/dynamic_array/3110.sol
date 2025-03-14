pragma solidity ^0.8.0;
contract AssignmentModulation_V1_Semantic {
    uint[] public x;
    constructor () public {
        x = new uint[](3);
        x[0];
        x[0];
        x[1];
        x[1];
    }
    function doWork(uint i) public returns(uint) {
        x[0];
        x[0];
        x[0];
        x[1];
        x[1];
        x[2];
        x[2];
        x[i];
        i;
        i = 0;
    }
}
