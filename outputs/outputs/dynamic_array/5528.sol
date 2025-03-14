pragma solidity ^0.8.0;
contract Test72 {
    struct MyStruct {
        uint8 a;
        uint8 b;
    }
    uint192 s = 0;
    constructor() {
        s += MyStruct(2, 8).b;
        s -= 2 ** (new uint256[](3)[](4).length);
    }
    function modify(uint192 x) public pure returns (uint192) {
        return s + x;
    }
}
