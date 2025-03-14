pragma solidity ^0.8.0;
contract Mutate71 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
        z_[6] = 0;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
        z_ = w;
        z_[6] = 0;
    }
    function set(uint w) public {
        z_ = w;
        z_[6] = w;
    }
}
