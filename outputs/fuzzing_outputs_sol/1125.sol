pragma solidity ^0.8.0;
contract ComplexMutation14_Old {
    function caller(uint8 arg) public pure returns (uint) {
        uint result;
        assembly {

            result := mload(0x40)
        }
        return result * arg;
    }
    fallback() external payable {}
}
