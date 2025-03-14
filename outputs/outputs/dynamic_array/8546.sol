pragma solidity ^0.8.0;
contract DyamicArrayTest {
    function mutate(StructWithNestedArrays memory previous) public {
        uint[2] memory nextInts;
        nextInts[0] = 0;
        previous.array1 = new uint256[](3);
        nextInts.push(0);
        previous.nestedInts = nextInts;
    }
}
