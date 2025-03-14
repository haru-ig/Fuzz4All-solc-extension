pragma solidity ^0.8.0;
contract Caller {
    uint public constant value = 7;
    fallback() external payable {
        require(msg.value == Caller.value);
    }
}
