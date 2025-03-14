pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        dynArr[1] = 8;
        return 7;
    }
    uint32[23] private dynArr;
}
