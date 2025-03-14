pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (address x_){
        uint8 _a_ = 0;
        uint8 _b_ = 0;
        x_ = address(bytes24(_a_, _b_, 0, _a_, 0, 0, 0, 0, 0, _b_, _a_, _b_, _a_, 0, _b_, 0, _a_, _a_));
    }
}
