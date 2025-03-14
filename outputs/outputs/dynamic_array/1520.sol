pragma solidity ^0.8.0;
contract EfficientDynamicArrayTypeSemanticallyEquivalent {
    uint17 private _number;
    constructor() public {
        _number = 190_49116408062;
    }
    function Test() public {
        uint256 x;
        for (uint i = 0; i < _number; ++i) {
            x = 2;
        }
    }
}
