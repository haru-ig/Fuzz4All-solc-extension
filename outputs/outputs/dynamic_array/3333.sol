pragma solidity ^0.8.0;

contract I1 {
    function use(uint256 key, bytes4 functionSelector) external {
    emit TestEvent(msg.sender);
    }
}
contract I2 is I1 {
    event TestEvent(address indexed addresser);
}
contract I3 is I1 {
    receive() external payable {}
}
