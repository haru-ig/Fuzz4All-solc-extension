pragma solidity ^0.8.0;
contract Example{
    uint public y;
    uint internal x;
    uint public immutable x2;
    uint512 internal immutable x3;
    constructor(){
        x = 1;
        x1 = 1;
        x2 = 1;
        x3 = 1;
    }
}
