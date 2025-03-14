pragma solidity ^0.8.0;
contract FooMut {
    function barmut() public returns (bool x_) {
        x_->x_ = false;
    }
    function bar() public returns (bool) {
        return foo(this).x_;
    }
}
