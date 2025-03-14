pragma solidity ^0.8.0;
contract Mutate57 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
        x_[z_] = z_ / 10;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
        x_[z_] = z_ + w;
        x_[z_] /= 0;
    }
    function set(uint w) public {
        z_ = w;
    }
}
