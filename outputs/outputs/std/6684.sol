pragma solidity ^0.8.0;
contract Mutate20 {
    constructor(uint j) public {
        y_[5] = j;
    }
    function getX() public view returns ( uint256 ) {
        return x_;
    }
    function getY() public view returns ( uint[5] memory ) {
        return y_;
    }
}
