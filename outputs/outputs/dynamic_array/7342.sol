pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        return 11;
    }
    uint32[23] private dynArr;
    function set(uint i, uint value) public {
        dynArr[i] = value;
    }
    function get(uint i) private pure returns (uint) {
        return dynArr[i];
    }
    function increment(uint offset) public pure returns(uint) {
        return 1 + get(offset);
    }
}
