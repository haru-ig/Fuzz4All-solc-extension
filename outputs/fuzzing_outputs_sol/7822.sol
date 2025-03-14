pragma solidity ^0.8.0;
contract CreateCaller {
    uint256 data = 0;
    bool valid = false;
    receive() external payable {}
    fallback() external payable {
            valid = true;
            data = msg.value;
    }
    event EtherReceived(uint256 data);
}
