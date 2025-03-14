pragma solidity ^0.8.0;
contract Same {
    fallback() external {
        Equivalent _equivalent;
    }
    receive() external payable {
        require(_msgSender() == msg.sender);
    }
}
