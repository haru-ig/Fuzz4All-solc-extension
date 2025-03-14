pragma solidity ^0.8.0;
contract NewlyMutatedFallbackFunction {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    modifier mutatedOnly {
        storedNumber = INITIAL_VALUE;
        _;
    }
    constructor() {
        storedNumber = 17;
    }
    function setZ(uint256 _val) public mutatedOnly {
        storedNumber = _val;
    }
}

contract UnmodifiedFallbackContract {
    bytes32 constant MUTATED_NAME = keccak256("MutatedFallbackModifier");
    bytes32 constant UNMODIFIED_NAME = keccak256("UnmodifiedFallbackFunction");
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;

    constructor() public {
        storedNumber = INITIAL_VALUE;
    }

    function setZ(uint256 _val) public {
        storedNumber = _val;
    }



    fallback() external {


        require(isMessageMutated(), "!isMessageMutated()");



        MutatedFallbackModifier(MUTATED_NAME).mutatedOnly();

        storedNumber = MIMMUTABLE_VALUE;

        if (storedNumber == _calculateValue()) {
            MIMMUTABLE_VALUE = 0;
            MIMMUTABLE_VALUE--;
        }
        if (storedNumber == _calculateValue()) {
            MIMMUTABLE_VALUE = 0;
        }
    }

    function isMessageMutated() public pure virtual returns (bool) {
        return msg.data == encode(MUTATED_NAME);
    }

    function _calculateValue() public pure virtual returns (uint256);
}
