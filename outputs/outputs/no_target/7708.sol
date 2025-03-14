pragma solidity ^0.8.0;
contract Bar is Foo {
    function run() public override {
        _ = 123 + 1001;
    }
}
