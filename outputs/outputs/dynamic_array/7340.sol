pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32){
        dynArr[4] = 14;
        return dynArr[5];
    }
    uint32[23] private dynArr;
}
