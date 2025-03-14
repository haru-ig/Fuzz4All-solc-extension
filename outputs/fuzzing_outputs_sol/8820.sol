pragma solidity ^0.8.0;
contract Fallback {
    fallback() external payable {
        require(msg.value == 34);
    }
}
