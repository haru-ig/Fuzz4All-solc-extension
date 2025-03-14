pragma solidity ^0.8.0;
contract EfficientDynamicArrayType {
    uint private _number;
    constructor() public {
        _number = 190_49116408062;
    }
    function Test() public {
        uint55 x;
        for (uint2 i = 0; i < _number; ++i) {
            x = 2;
        }
        for (uint i = 0; i < _number; ++i) {
            x = 2;
        }
    }
}
