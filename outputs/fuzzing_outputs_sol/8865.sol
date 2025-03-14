pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    uint256 constant UINT = 123;

    address public test;
    function callContract() public payable {
        test.call{value: UINT}("");
    }
}
interface MockEtherReceiver {
    function onERC20Received(address from, uint256 amount, bytes calldata data) external payable;
}

pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    uint256 constant UINT = 123;
    address public test;

    address public mockEtherReceiver;

    event EtherReceived(address from, uint256 amount, bytes memory data);
    constructor(address _test, address _mockEtherReceiver) {
        test = _test;
        mockEtherReceiver = _mockEtherReceiver;
    }

    fallback() external payable {
        emit EtherReceived(msg.sender, msg.value, "MockEtherReceiver.onERC20Received");
        (bool success, bytes memory returnData) = test.call{value: UINT}("");
        if (!success) {
            revert("Fallback failed");
        }
    }
}
