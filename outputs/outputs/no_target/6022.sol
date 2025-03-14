pragma solidity ^0.8.0;
contract MyContract {
    struct MyStruct { uint8 b; }
    modifier MyModifier() {
        self.b = 0;
        _;
    }
}
