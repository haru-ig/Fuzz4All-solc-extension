pragma solidity ^0.8.0;
contract ExampleStruct6 {
    uint8 x;
    uint64 x_;
    uint8 a;
    uint256 b;
    uint16 c;
    bool d;
    constructor(uint8 x_, uint64 x0_, uint8 a_, uint256 b_, uint16 c_, bool d_) {
        uint8 a = uint8(a_);
        uint64 a0 = uint64(a_);
        if(x!= x0_ && a0 > x0_) {
            x = x0_;
        }
        if(b > a) {
            require(!d);
            b = uint256(a);
        }
        if(b < a) {
            uint16 b0 = uint16(b_);
            require(!d);
            b += uint256(b0);
        }
        x_ = x_;
    }
}
