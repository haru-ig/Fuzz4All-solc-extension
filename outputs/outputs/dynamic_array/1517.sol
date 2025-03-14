pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayForArrayReturn {
    uint private _number;
    function Test() public returns (uint256[7] memory) {
        uint256[7] memory result;

        for (uint i = 0; i < _number; ++i) {
            result[i] = 123456;
        }
        return result;
    }
}
