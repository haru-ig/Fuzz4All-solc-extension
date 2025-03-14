pragma solidity ^0.8.0;
receiver CallerReceiver {
    fallback() external payable {}
}
contract Caller {
    receive() external payable {}
    fallback() public payable {}
}
