pragma solidity ^0.8.0;
contract Baz {
    uint y;
    receive() external payable returns (uint x, uint z) {}
}
