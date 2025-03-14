pragma solidity ^0.8.0;
contract Example12 {
    event ExampleEvent(uint256 value);
    fallback() external payable {
        emit ExampleEvent(msg.value);
    }
}
