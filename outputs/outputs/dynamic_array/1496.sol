pragma solidity ^0.8.0;
contract NoSemanticsEquivalentEfficientDynamicArrayType6 {
    uint32[14765885644126] public array14765885644126;
    function Test() public {
        for (uint i = 0; i < array14765885644126.length; i++) {
            array14765885644126[i] = 1;
        }
    }
}
