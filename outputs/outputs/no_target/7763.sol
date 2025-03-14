pragma solidity ^0.8.0;
contract Foo {
    function foo(uint8 x1_, uint8 y1_, uint8 x2_, uint8 y2_) public pure returns (uint8 z_) {
        z_ = x2_ - x_;
    }
}
