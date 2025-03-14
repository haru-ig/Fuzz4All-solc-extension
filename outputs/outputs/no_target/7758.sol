pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure returns (uint8 x_, uint8 y_) {
        x_ = 1;
        y_ = y_;
    }
}
