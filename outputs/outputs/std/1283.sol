pragma solidity ^0.8.0;
contract Arrays {
    function createAddress(uint32[] memory value) public pure returns (address) {
        return address(value[0]);
    }
}
