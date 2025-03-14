pragma solidity ^0.8.0;
address Caller {
    address payable selfDestructAddress = payable(address(0x00));
    fallback () external payable {
        selfdestruct(selfDestructAddress);
    }
}
