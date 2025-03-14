pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (bool x_) {
        (bool x, bool y) = (true, false);
        return x_;
    }
    function barmut() public pure returns (bool x_) {
        (bool x, bool y) = (true, false);
        bool z = x_;
        return x_;
    }
}
