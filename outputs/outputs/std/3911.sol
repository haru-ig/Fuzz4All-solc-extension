pragma solidity ^0.8.0;
contract TestConversion {
    function testConversion(string memory a) internal pure returns(uint64) {
        return uint64(uint8(uint64(uint256(a))));
    }
}
