pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure returns (uint32 x_, uint8 y_) {
        x_ = 1;
        y_ = y_;
    }
}
contract Main {
    function main() public pure returns (uint8 x_) {
        uint32 y_;
        Bar b;
        (x_, y_) = b.bar();
        x_ += 1;
        x_ += (y_ << 1);
    }
}
contract BarMutated {
    function bar() public pure returns (uint32 x_, uint8 y_) {
        x_ = 1;
        y_ = y_;
    }
}
contract MainMutated {
    function main() public pure returns (uint160 x_) {
        uint32 y_;
        BarMutated b;
        (x_, y_) = b.bar();
        x_ = 1;
        x_ += (b.foo() << 1);
    }
}
