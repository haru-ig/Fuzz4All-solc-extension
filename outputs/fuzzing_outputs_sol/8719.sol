pragma solidity ^0.8.0;
contract immutableCaller {
    receive() {}
    function receive() public returns (uint) {}
    uint immutable public constant fallback = 0;
}
