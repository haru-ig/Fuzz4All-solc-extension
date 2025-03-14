pragma solidity ^0.8.0;
interface TestInterface_1_2 {
    function test_interface_fallback() public;
}
pragma solidity 0.8.13;
contract Caller_Example_2 {
    fallback function fallback() public payable {
        address contractAddress = address(this);
        (bool success, bytes memory data) = address(contractAddress).call{value:msg.value}(abi.encodeWithSignature("test_interface_fallback()"));
        require(success);
        emit Log_2(data);
    }
    receive() external payable {
        emit Log_2(abi.encode("I received Ether."));
    }
    event Log_2(bytes data);
}
pragma solidity 0.7.6;
library Strings {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
    function toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits = 0;
        while (temp!= 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value!= 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x0";
        }
        bytes16 byteBuffer;
        while (value!= 0) {
            byteBuffer = bytes16(uint256(value) - uint256(value % 16) * 16);
            value /= 16;
            byteBuffer = bytes16(byteBuffer | bytes16(uint256(_HEX_SYMBOLS[value])));
        }
        return string(abi.encodePacked("0x", byteBuffer.toString()));
    }
}
pragma solidity 0.7.6;
contract Caller_Example_3 {
    bytes32 private constant _HEX_SYMBOLS = "0123456789abcdef";
    modifier stringToUint256(string calldata _value, uint256[3] memory _result) {
        require(_result.length < 35 && _value.length!= 0);
        for (uint256 index = 0; index < _value.length; index
