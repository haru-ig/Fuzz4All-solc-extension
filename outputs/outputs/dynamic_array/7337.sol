pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        uint32 tmp;
        uint32(memory).transfer(tmp);
        return tmp;
    }
    uint32[24] private dynArr;
}
