pragma solidity ^0.8.0;
contract B {
    uint[20] storage array = new uint[](20);

    function append() public pure {
        array[_uint25(0)]++;
        array[_uint25(5)]++;
        array[_uint25(195)]++;
        array[_uint25(200)]++;
    }

    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function subtract(uint x, uint y) public pure returns (uint) {
        return x - y;
    }
}
