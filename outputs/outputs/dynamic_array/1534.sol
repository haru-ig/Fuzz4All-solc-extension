pragma solidity ^0.8.0;
contract EfficientDynamicArrayType {
    struct S { uint x; uint y; };
    uint[] array;
    constructor() public {
        array.push(S(2, 3));
    }
    function Test() public {
        uint256 y;
        for (uint i = 0; i < 1; ++i) {
        }
    }
}
