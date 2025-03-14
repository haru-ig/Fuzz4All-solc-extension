pragma solidity ^0.8.0;
contract B {
    function fallback(uint) {}
    receive() external payable { }
}
