pragma solidity ^0.8.0;
contract Mutate78 {
    uint[] private x_;
    uint256 private y_;
    constructor() public {
        x_ = new uint[](5);
        for(uint256 i=0;i<x_.length; i++){
            x_[i] = i;
        }
        y_ = 2;
    }
    function modify(uint j) public {
        x_[j] = 0;
    }
    function getX() public view returns ( uint[] memory ) {
        return x_;
    }
    function getY() public view returns ( uint256 ) {
        return y_;
    }
}
