pragma solidity ^0.8.0;
library TestLib {
    struct DynamicArray { uint256 i; uint256 j; }
    function test(DynamicArray memory array, uint8 a, uint8 b, uint8 c) public pure { }
}
