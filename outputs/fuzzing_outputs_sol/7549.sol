pragma solidity ^0.8.0;
contract MutatedFallbackModifier {

    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;

    constructor() {
        storedNumber = 17;
    }

    fallback() external payable {
        storedNumber = 18;
    }

    receive() external {
        require (storedNumber == INITIAL_VALUE+1);
        revert();
    }
}

pragma solidity ^0.8.0;
contract MutatedFallbackModifier {

    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;

    modifier validCall {
        if (msg.value == 18) {
            storedNumber = storedNumber + 1;
        }else{
            revert();
        }

        _;
    }

    constructor() {
        storedNumber = 17;
    }

    fallback() external payable validCall {
        storedNumber = 18;
    }

}
