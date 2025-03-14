pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType {
    uint[] public array19249116408062;
    uint number;
    function Test() public {
        number = 190_49116408062;
        uint[3] memory array3 = [190_49116408062,2,3];
    }
}
contract SemanticsEquivalentEfficientDynamicArrayType {
    uint32[40] public array21322800004161;
    uint number;
    function Test() public {
        uint[40] memory array41156000004161;
        number = 1_3456000004161;
        for (uint i = 0; i < array41156000004161.length; i++) {
            array41156000004161[i] = byte(0);
        }
    }
}
