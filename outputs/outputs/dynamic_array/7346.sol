pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        dynArr[0] = 9;
        dynArr[1] = 7;
        return dynArr[0];
    }
    uint32[2] private dynArr;
}
