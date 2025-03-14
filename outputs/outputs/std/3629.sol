pragma solidity ^0.8.0;
contract Convert {
    function _toUint(string memory str) internal pure returns (uint) {
        return uint(str);
    }
    function _toAddress(string memory str) internal pure returns (address) {
        return address(uint(str));
    }
}
