pragma solidity ^0.8.0;
contract CallerSimple {
    function get() public returns (uint) {
        return address(this).balance;
    }
}
