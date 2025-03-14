pragma solidity ^0.8.0;
import "./IDynamicalySizedArrayElement.sol";
contract DynamicalySizedArray {
    function store(uint[] memory) external payable {
        IDynamicalySizedArrayElement myArrayElement = IDynamicalySizedArrayElement(msg.sender);
        myArrayElement.storeWithSize.value(msg.value)(msg.value);
    }
}
