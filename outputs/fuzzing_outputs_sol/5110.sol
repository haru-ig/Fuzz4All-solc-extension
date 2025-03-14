pragma solidity ^0.8.0;
contract C2 {
    receive () external payable {}
    receive (uint x) {}
    receive (int x) {}
}
