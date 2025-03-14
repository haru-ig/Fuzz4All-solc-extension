pragma solidity ^0.8.0;
contract Mutate60 {
    uint constant private _MAX_INT = 2**255 - 1;
    uint[10] x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function set(uint w) public {
        z_ = w;
        x_[1] = z_;
    }
}
