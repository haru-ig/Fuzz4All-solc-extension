pragma solidity ^0.8.0;
contract Caller {
    uint256 storedValue = 0;
    receive() external payable {
        storedValue += uint256(msg.value);
    }
}
