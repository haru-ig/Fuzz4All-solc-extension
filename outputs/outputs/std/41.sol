pragma solidity ^0.8.0;
contract Convert {
    string public constant string_zero = "0x00";
    bytes32 public constant bytes32_zero = "0x0000000000000000000000000000000000000000000000000000000000000";
    address public constant address_zero = "00000000000000000000000000000000000000000000000000000000000000000";
    int public constant int_zero = 0;
    function toBool(int x) public pure returns (bool) {
    }
    function toString(int x) public pure returns (string memory) {
    }
    function toInt256(int x) public pure returns (int256) {
    }
    function toUint256(int x) public pure returns (uint256) {
    }
    function toAddress(int x) public pure returns (address) {
    }
    function toUint(int x) public pure returns (uint) {
    }
}
