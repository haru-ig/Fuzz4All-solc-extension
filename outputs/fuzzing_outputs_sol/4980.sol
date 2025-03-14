pragma solidity ^0.8.0;
contract Caller {
    fallback private payable = payableRecipient;
    receive() external payable {}
}
