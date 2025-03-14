pragma solidity ^0.8.0;
contract TestConversion {
    function testConversion(uint128 a) internal pure returns(uint128) {
    }
}


pragma solidity ^0.8.0;
contract TestConversion {
    function testConversion(string memory a) internal pure returns(bool) {
    }
    function testConversion(uint256 a) internal pure returns(uint) {
    }
    function testConversion(uint64 a) internal pure returns(uint64) {
    }
    function testConversion(uint128 a) internal pure returns(uint128) {
    }
    function testConversion(uint8192 a) internal pure returns(uint8192) {
    }
    function testConversion(address a) internal pure returns(bool) {
    }
    function testConversion(bytes32 a) internal pure returns(bool) {
    }
    function testConversion(bytes memory a) internal pure returns(bool) {
    }
    function testConversion(uint8 a) internal pure returns(bool) {
    }
    function testConversion(uint256 a_x) internal pure returns(bool) {
        return ((a_x << 92) == ((uint256(a_x) << 92) / denominator));
    }
    function testConversion(uint128 a_x) internal pure returns(bool) {
        return ((a_x << 92) == ((uint256(a_x) << 92) / denominator));
    }
}
