pragma solidity ^0.8.0;
contract Mutate59 {
    uint constant private _MAX_INT = 2**255 - 1;
    uint[10] x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
       x_[1] = z_ + w;
       x_[9] = x_[9] + (x_[1] == _MAX_INT? 0 : 1);
    }
    function set(uint w) public {
        z_ = w;
    }
}
