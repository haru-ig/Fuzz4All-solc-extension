pragma solidity ^0.8.0;
struct StructWithInts {
    uint256 num;
}
contract Test {
    function nestedCalldataArrays() public pure returns (StructWithNestedArrays memory data) {
        data.array1 = uint256[3](0, 1, uint64(1));
        data.nestedArrays = uint256[2][2]([uint256[2](0, 1)], [uint256[2](2, 3)]]);
        data.nestedInts = 42;
    }
    function nestedArrays() public pure returns (uint256[3] memory) {
        uint256[3] memory x;
        x[3] = 13;
        return x;
    }
    function ints() public pure returns (uint256) {
        uint256 num;
        num = 42;
        return num;
    }
}
