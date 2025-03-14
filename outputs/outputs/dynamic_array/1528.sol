pragma solidity ^0.8.0;
contract EfficientDynamicArrayType2 {
    uint x;
    constructor() public {
        x = 2;
    }
    function Test() public {
        uint x;
        uint y;
        x = 2;
        y = x + x;
    }
}
