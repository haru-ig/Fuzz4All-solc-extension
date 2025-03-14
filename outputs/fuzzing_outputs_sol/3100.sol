pragma solidity ^0.8.0;
contract Example12F {
    event Fulfilled(uint256 value);
    uint256 num;
    receive() external payable {
        if ((msg.value > 0)) {
            num += 1;
            emit Fulfilled(num);
        }
    }
}
