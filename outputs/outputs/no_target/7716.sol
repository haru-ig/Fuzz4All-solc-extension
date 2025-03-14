pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_) {
        int x, int y;
        (x, y) = (5, 6);
        return x_;
    }
    function barmut() public pure returns (int x_) {
        int x, int y;
        (x, y) = (5, 6);
        x_ = 10;
        return x_;
    }
}
