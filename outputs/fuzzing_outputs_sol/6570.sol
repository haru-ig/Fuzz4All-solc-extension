pragma solidity ^0.8.0;
contract Caller {
    uint public balance;
    function() external payable {
        balance += msg.value;
    }
}
