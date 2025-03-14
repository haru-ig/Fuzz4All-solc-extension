pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType {
    uint private _number;
    function Test() public returns (uint256) {
        _number = 190_49116408062;
        uint256 x;
        x == 2;
        for (uint i = 0; i < _number; ++i) {
            x = 2;
        }
        uint256 y;
        x * 2;
        x <= 3;
        return x;
    }

}
