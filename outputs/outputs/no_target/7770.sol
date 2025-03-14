pragma solidity ^0.8.0;
contract Bar {
    uint constant _a = 1;
    uint constant _b = 0;
    Foo public foo;
    uint indexed x;
    function f(uint8 _a_, uint8 _b_) public pure {
        uint8 _x_;
        (uint8 x_, uint8 y_) = foo.bar();
        _x_ = _a_ + _b_ - _x_;
        x_ = _x_ - _b_;
    }
    function setFoo(Foo foo_) external {foo = foo_;}
}
