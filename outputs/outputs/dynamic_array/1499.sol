pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType6b {
    uint256[60] public array60472062465543;
    uint public number;
    function Test() public {
        number = 60_472062465543;
        for (uint i = 0; i < array60472062465543.length; i++) {
            array60472062465543[i] = 1;
        }
    }
}
