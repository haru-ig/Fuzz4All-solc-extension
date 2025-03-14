pragma solidity ^0.8.0;
contract Foo {
    function barmut() public pure returns (bool x, bool y) {
        (bool x_, bool y_) = (true, false);
        bool z = x_;
        return (x_, y_);
    }
    function bar() public pure returns (bool x, bool y) {
        (bool x_, bool y_) = (true, false);
        return (x_, y_);
    }
}
