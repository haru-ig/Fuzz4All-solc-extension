pragma solidity ^0.8.0;
contract Mutate40 {
    uint[4] x_;
    uint z_;
    constructor(uint z) public {
        x_[1] = z_ + 1;
        x_[2] = 2 * z_;
        x_[9] = (x_[1] == 1 || x_[2] == 2 || x_[9] == uint(-1))
                          ? 0 : 1;
    }
    function getX() public view returns ( uint[4] memory ) {
            return x_;
    }
    function divisible() public view returns ( bool ) {
        return x_[9] == 1;
    }
    function add(uint w) public {
       x_[1] = 1 + z_;
       x_[2] = 4 * z_ - 1;
    }
    function set(uint w) public {
        z_ = w;
    }
}
