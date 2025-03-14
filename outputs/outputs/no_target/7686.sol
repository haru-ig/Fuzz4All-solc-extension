pragma solidity ^0.8.0;
library Bar {
    function baz(uint x) public pure returns (uint x_) {
        x_ = uint(x << 1);
        return x_;
    }

    function bazmut(uint x) public pure returns (uint x_) {
        x_ = x << 1;
        return x_;
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function bar(uint x) public pure returns (uint) {
        return uint(x);
    }
    function barmut(uint x) public pure returns (uint x_) {
        return x muti uint128(1)
    }
}
contract Bar {
    function bar(uint x) public pure returns (uint) {
        return uint(x << 1);
    }

    function barmut(uint x) public pure returns (uint x_) {
        x_ = x << 1;
        return x_;
    }
}
contract RevertTest {
    function test() public {
        (uint u, uint s) = Foo.bar(1);
        (uint u_, uint s_) = Foo.barmut(1);
        (uint q, uint r) = Bar.bar(1);
        (uint q_, uint r_) = Bar.barmut(1);
        (uint x, uint y, uint z) = Foo.baz(1);
        (uint x_, uint y_, uint z_) = Foo.bazmut(1);
        x_.shouldEq(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint((uint(uint(uint(uint(uint(uint(uint(uint(uint)(uint(uint(uint(uint((uint(uint(uint
