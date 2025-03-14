pragma solidity ^0.8.0;
contract Fallback {
    bool success;
    event ExecuteCalled(uint256 amount);

    constructor() {
        address payable user = payable(msg.sender);
        user.transfer(uint256(2**(256)) - 1e9);
        success = true;
        emit ExecuteCalled(2**(256)-1);
    }

    receive() payable {}

    fallback() external payable {
        require(
            success,
            "Fallback: Fallback function tried to call an executed contract."
        );
        success = false;
        uint256 payable eip2290ReturnAmount = msg.value;
    }
}
