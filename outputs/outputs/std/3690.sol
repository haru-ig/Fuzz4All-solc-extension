pragma solidity ^0.8.0;
contract Array {
    function newArray(uint arg) public pure returns (uint[] memory new_array) {
        new_array = new uint[](arg);
    }
}
