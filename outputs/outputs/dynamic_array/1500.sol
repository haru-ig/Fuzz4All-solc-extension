pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType6c {
    uint[12_347_206_246_554_3] public array60472062465543;
    uint number;
    function Test() public {
        number = 60_472062465543;
        for (uint i = 0; i < array60472062465543.length; i++) {
            array60472062465543[i] = 1;
        }
    }
}
