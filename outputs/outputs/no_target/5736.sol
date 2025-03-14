pragma solidity ^0.8.0;
contract Qux {
    uint y;
    receive() external payable { y--; }
}
