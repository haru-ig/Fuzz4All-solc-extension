pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayTypeSemanticallyEquivalent {
    uint private _number;
    modifier arraySizeIsReassigned(uint256 size) {
        _number = size;
        _;
    }
    function Test() public returns (uint256) {
        uint256 i;
        for (i = 0; i < _number; ++i)
            arraySizeIsReassigned(2);
        return 190_49116408062;
    }
}
