pragma solidity ^0.8.0;
contract MyContract {
    function get(uint) public pure returns (address) {
        return address(0);
    }
}
contract C {
    function get(uint) public pure returns (address) {
        return new C();
    }
}
