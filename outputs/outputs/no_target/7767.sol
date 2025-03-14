pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure returns (uint8 x_) {
        uint8 a_ = -1;
        x_ = a_ + 1;
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure returns (uint8 x_) {
        uint8 a_ = 1;
        uint8 b = 1;
        x_ = a_ + b;
    }
}
