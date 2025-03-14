pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    uint256 constant INITIAL_VALUE = 23;
    mapping(address => uint) public balanceOf;
    uint public storedNumber;
    constructor() {
        storedNumber = 17;
    }
    fallback() external payable {
        storeNumber();
    }
    function storeNumber() private returns (address payable) {
        balanceOf[msg.sender] += msg.value;
        storedNumber = INITIAL_VALUE;
        return msg.sender;
    }
}
