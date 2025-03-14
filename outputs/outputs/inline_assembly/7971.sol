pragma solidity ^0.8.0;
contract L71MultipleReturn5 {
    uint x;
    uint y;
    uint z;
    function sneaky(uint a, uint b) public returns (uint x_, uint z_, uint x_, uint y_) {
        x_ = x;
        z_ = z;
        x_ = a + x_;
        y_ = b + z_;
        x_ = x + 1234;
        y_ = z + 5234;
        x_ = y_ + a;
        y_ = x_ + x_;
        x_ = a - 1234;
        z_ = a + x_;
        y_ = b - x_;
    }
}
