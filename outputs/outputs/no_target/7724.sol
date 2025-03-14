pragma solidity ^0.8.0;
contract MutatedFoo {
    function f() public pure returns (uint) {
        uint s = 0;
        uint x_;
        uint y_;
        (x_, y_) = (s, x_);
        return x_;
    }
    function f2() public pure returns (uint) {
        uint s = 0;
        uint x_;
        uint y_;
        (x_, y_) = (s, s);
        (s, x_) = (s, s);
        _;
        return s;
    }
    function f3() public pure returns (bool) {
        uint s = 0;
        uint x_;
        uint y_;
        (s, x_) = (x_, s);
        (s, y_) = (s, x_);
        _;
        return x_;
    }
}
