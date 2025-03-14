pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_) {
        (int x, ) = (5);
        return x_;
    }
    function barmut() public pure returns (int x_) {
        (int x, ) = (5);
        int z = x_;
        return x_;
    }
}
