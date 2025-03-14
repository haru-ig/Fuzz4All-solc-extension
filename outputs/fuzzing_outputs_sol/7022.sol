pragma solidity ^0.8.0;
contract CallerSimple {
    function get() public pure returns (uint) {
        return address(this).balance;
    }
}
