pragma solidity ^0.8.0;
contract AssignmentModulation_V3{
    uint i;
    uint[] public x;
    uint public f;
    constructor () public {
        i = 60325625;
        x[0];
        x[1];
        x[0];
        x[0];
        x[i];
       x[0];
       x[0];
       x[1];
       x[0];
       x[0];
       f = i;
    }
    function doWork() public returns(uint){
        x[1];
        x[0];
        x[0];
        x[0];
        x[0];
       x[0];
       x[0];
       x[1];
       x[0];
       x[0];
       f = i;
        x[0];
        x[0];
        x[0];
        x[0];
        x[0];
    }
    function getAndStorePairs() public returns(uint){
        return f;
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V4{
    uint public i;
    uint[] public x;
    uint public f;
    uint public g;
    constructor () public {
        x[0];
        x[1];
        x[0];
        x[0];
        x[0];
       x[i];
       x[0];
       x[0];
       x[1];
       x[0];
       x[0];
       g = i;
       f = i;
       i = i;
    }
    function doWork() public returns(uint){
        x[1];
        x[0];
        x[0];
        x[0];
        x[0];
       x[0];
       x[0];
       x[1];
       x[0];
       x[0];
       f = i;
       f = i;
       i += x[0];
       i = i - 3;
    }
    function getAndStorePairs() public returns(uint){
        return g;
    }
}
