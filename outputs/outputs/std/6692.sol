pragma solidity ^0.8.0;
contract Mutate56 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
        x_[z_] = z_ + w;
    }
    function set(uint w) public {
        z_ = w;
    }
}
