pragma solidity ^0.8.0;
contract FallbackReceiver {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }

    receive() external payable {
        storedData = uint(msg.value);
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
