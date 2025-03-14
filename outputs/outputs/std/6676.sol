pragma solidity ^0.8.0;
contract Mutate95 {
    uint[] x_;
    uint256 y_;
    constructor() public {
        x_ = new uint[](4);
        for( uint256 i=0; i<x_.length; i++){
            x_[i] = i;
        }
        y_ = 5;
    }
    function modify(uint j) public {
        x_[j] = 99;
    }
    function getX() public view returns ( uint[] memory ) {
        return x_;
    }
    function getY() public view returns ( uint256 ) {
        return y_;
    }
}
