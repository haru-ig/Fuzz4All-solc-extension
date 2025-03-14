pragma solidity ^0.8.0;
contract Mutate80 {
    uint[] private x_;
    uint256 private y_;
    constructor() public {
        x_ = new uint[](5);
        y_ = 2;
        for(uint256 i=0;i<x_.length; i++){
            x_[i] = i;
        }
    }
    function modify(uint j) public {
        uint l_x_j = x_[j];
        x_[j] = y_;
        y_ = 1;
        x_[j] = l_x_;
    }
    function getX() public view returns ( uint[] memory ) {
        return x_;
    }
    function getY() public view returns ( uint256 ) {
        return y_;
    }
}
