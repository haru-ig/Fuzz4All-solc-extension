pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        dynArr[1] = 123;
        uint32 x;
        assembly {
            x := dynArr[0]
        }
        return x;
    }
    uint32[5] private dynArr;
}
