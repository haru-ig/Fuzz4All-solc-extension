pragma solidity ^0.8.0;
library Foo {
    function bar(uint x) public pure returns (uint) {
        return uint(x);
    }

    function barmut(uint x) public pure returns (uint x_) {
        return x | uint128(1);
    }

    function baz(uint x) public pure returns (uint x_) {
        x_ = uint(x);
        return x_;
    }

    function bazmut(uint x) public pure returns (uint x_) {
        x_ = x | uint64(1);
        return x_;
    }
}
