pragma solidity ^0.8.0;
contract MyContract {
    function getAddress(uint) public pure returns (address) {
        return address(0);
    }
    function setAddress(uint x) public {
        address addr = address(0x0);
    }
}
contract C {
    function get(uint) public pure returns (address) {
        return address(0);
    }
}
