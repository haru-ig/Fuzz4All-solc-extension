pragma solidity ^0.8.0;
contract A {
    address payable addr;
    StructWithNestedArrays[2] structs;

    constructor(address _addr) {
        addr = _addr;
        structs[0] = StructWithNestedArrays(uint256[3]()[](0, 0, 0));
        structs[1] = StructWithNestedArrays(uint256[2]()[](0, 0));
    }

}
