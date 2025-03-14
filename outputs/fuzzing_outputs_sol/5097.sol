pragma solidity ^0.8.0;
contract Caller {
    fallback payable(){}
    receive() external payable {
    }
}
