pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_) {
        int x;
        return x_;
    }
    function barmut() public pure returns (int x_) {
        int x;
        int y = x_;
        int z = x_;
        return x_;
    }
}
