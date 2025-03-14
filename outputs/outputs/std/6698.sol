pragma solidity ^0.8.0;
contract Mutate57 {
    uint[10][2] public y_;

    constructor( uint[5] memory x ) public {
        y_[0][0] = x[0];
        y_[1][0] = x[2];
    }
    function set(uint w1, uint[4] memory y, uint x1) public{
        y_[y][0] = y[0];
        y_[y][1] = y[1];
    }
}
