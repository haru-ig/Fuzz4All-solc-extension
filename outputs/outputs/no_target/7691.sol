pragma solidity ^0.8.0;
contract Foo {
    function bar(uint x) public pure returns (uint) {
        require(x > 0);
        return x;
    }
    function barmut(uint x) public pure returns (uint x_) {
        x_ = x + 7;
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        return x_;
    }
    function baz(uint x) public pure returns (uint x_) {
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        x_ = add(x_, 1);
        return x;
    }
    function bazmut(uint x) public pure returns (uint x_) {
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        x_ = x.add(1);
        return x_;
    }
}
