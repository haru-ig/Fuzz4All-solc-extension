pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (uint x_, uint y_) {
        uint8 _a_ = 0;
        uint8 _b_ = 0;
        x_ = _a_ + _b_;
        y_ = _a_ - _b_;
    }
}
