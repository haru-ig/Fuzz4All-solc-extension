pragma solidity ^0.8.0;
contract C10 {
    receive calldata() external payable pure {}
    fallback () external payable pure {}
}
