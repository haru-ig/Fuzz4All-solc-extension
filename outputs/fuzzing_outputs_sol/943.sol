pragma solidity ^0.8.0;
contract ModReceive {
    fallback(uint amount) external { }
    receive() external { }
}
