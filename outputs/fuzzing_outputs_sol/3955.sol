pragma solidity ^0.8.0;
contract Caller {
    event EtherSent(address indexed dest, uint256 sentValue);

    fallback() external payable { }
    receive() external { }
}
