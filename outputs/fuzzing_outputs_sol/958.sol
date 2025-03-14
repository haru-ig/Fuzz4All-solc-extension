pragma solidity ^0.8.0;
contract Caller {
    receive() external { }
    receive() external payable { }
    receive() external pure { }
}
