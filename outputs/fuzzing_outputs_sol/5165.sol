pragma solidity ^0.8.0;
contract C11 {
    fallback () external payable {}
    receive () external payable returns (uint) {}
}
