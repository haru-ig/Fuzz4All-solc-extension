pragma solidity ^0.8.0;
contract FallbackMutator {
    uint256 constant MINIMUM_VALUE = 1;
    uint256 minimumValue;
    string private constant NAME_ADDRESS = "#";

    constructor(uint256 _value) {
        minimumValue = _value;
    }

    function setMinimumValue(uint256 newMinimumValue) public {
        require(newMinimumValue >= MINIMUM_VALUE, "Too high minimum value");
        minimumValue = newMinimumValue;
    }

    receive() external payable {}

    function setFallbackFunction() public onlyOwner {
        name = NAME_ADDRESS;
    }
}
