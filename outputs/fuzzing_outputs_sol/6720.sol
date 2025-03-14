pragma solidity ^0.8.0;
contract BadCaller is Caller {
    receive() external payable {
        emit Log(1);
    }
    event Log(uint a);
}
