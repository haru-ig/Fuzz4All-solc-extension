pragma solidity ^0.8.0;
struct MutatedStructWithNestedArrays {
    uint256[3] array1_0;
    bytes2[] array2;
    uint256 nestedInts_0;
}

contract Contract {
    function constructor() {}
    function getData() public pure returns (bytes memory) {
        return abi.encodePacked(StructWithNestedArrays(4, 5));
    }
}
