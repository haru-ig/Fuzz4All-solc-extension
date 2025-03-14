pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType2 {
    uint8[8192] public array8192;
    uint public number;
    function Test() public {
        number = 8192;
        for (uint i = 0; i < array8192.length; i++) {
            array8192[i] = 1;
        }
    }
}
