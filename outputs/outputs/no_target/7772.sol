pragma solidity ^0.8.0;
contract Foo {
    contract Bar {
        function baz() public pure returns (uint x_) {
            if (_a_ > 0) {
                return _a_;
            } else {
                return max(500 - _a_, 0);
            }
            uint8 _a_ = 0;
            uint8 _b_ = 0;
            if (_a_ > 0) {
                x_ = _a_;
            } else {
                x_ = 500 - _a_;
            }
        }
    }
}
