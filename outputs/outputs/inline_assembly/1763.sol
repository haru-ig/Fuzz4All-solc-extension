pragma solidity ^0.8.0;
contract Example{
    uint[] public x;
    uint f(uint j) public{
        uint _ret = x[j];
        x[j] = 0;
    }
    constructor ()public{
        x.push(0);
    }
}
