pragma solidity ^0.8.0;
contract receiveEmeritusFallBack {
    function receive() external payable {}
    receive() external payable {}
    fallback() external payable {}
    receiveEmeritusFallBack(uint) {}
}
