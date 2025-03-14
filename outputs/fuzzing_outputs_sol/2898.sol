pragma solidity ^0.8.0;
contract Bar {
    emit Whatever("Any one-sentence message");
    receive() external payable {
        emit Whatever("Any one-sentence message");
        emit Whatever("Any one-sentence message");
    }
    fallback () external payable {
    }
}
