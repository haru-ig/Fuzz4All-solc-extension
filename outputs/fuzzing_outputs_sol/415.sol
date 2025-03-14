pragma solidity ^0.8.0;
contract SafelyCaller {
    uint amount;
    receive() external payable {
        amount += msg.value;
    }
    fallback() external payable {
        amount += msg.value;
    }
}
