pragma solidity ^0.8.0;
contract L14 {
    function multiply(uint x, uint y) public pure returns (uint) {
        byte memory encoded_x = byte(bytes1{0x6b}:4) || bytes2(bytes1{0x31}:255) || bytes1(bytes1{0x31}:1) || uint(x);
        byte memory encoded_y = byte(bytes1{0x6b}:4) || bytes2(bytes1{0x31}:255) || bytes1(bytes1{0x31}:2) || uint(y);
        return uint(keccak256(abi.encodePacked(encoded_x, encoded_y)));
    }
}
