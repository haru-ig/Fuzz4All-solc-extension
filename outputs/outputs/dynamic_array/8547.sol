pragma solidity ^0.8.0;
contract Mutator {
    function nestedArrays(StructWithNestedArrays storage s) public {
        s.array1 = [1,2,3,4,5];
        s.nestedInts = [1,2];
        s.nestedInts[1] = 10;
    }
}
