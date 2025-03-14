pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity27_dynamic_30 {
    event mChanged(bytes oldData, bytes newData);
    uint256 public constant n = 10;
    uint256[n] public m;
}
contract DynamicArrayTest_empty {
    function test1() public pure {
        uint[] memory empty;
        bytes memory empty_bytes = empty;
    }

    function test2(uint[] memory empty) public pure {
        bytes memory empty_bytes = empty;
    }

    function test3(uint[0] memory empty) public pure {
        bytes memory empty_bytes = empty;
    }

    function test4(uint[n] memory empty, bytes memory empty_bytes) public pure {
        empty = empty;
        empty_bytes = empty_bytes;
    }

    function test5() public pure {}

    modifier p1() {
        bytes memory memoryBytes = new bytes(64);
        uint[] memory empty = new uint[](1);
        bytes memory empty_bytes = new bytes(1);
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty = empty;
        empty_bytes = empty_bytes;
        empty =
