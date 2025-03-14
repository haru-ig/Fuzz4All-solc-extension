pragma solidity ^0.8.0;
contract MyContract {
    function getAddress(uint) public returns (address) {
        return address(uint(uint(address(0))));
    }
}
