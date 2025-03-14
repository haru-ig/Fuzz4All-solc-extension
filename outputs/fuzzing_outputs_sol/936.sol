pragma solidity ^0.8.0;
contract Caller {
    event MyError (address myAddress, uint myError);
    fallback () external payable {
        emit MyError(msg.sender, 1);
    }
}
