pragma solidity ^0.8.0;
contract LongRunning {
    fallback() external payable {
    }
}
contract Caller is LongRunning {
    receive() external payable {
    }
}
