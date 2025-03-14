pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        return 7;
    }
    uint32[2] private dynArr;
    function returnFromContract() public pure returns(uint32) {
        return dynArr[0];
    }
    function set(uint32 x) public {
        dynArr.length=1;
    }
}
