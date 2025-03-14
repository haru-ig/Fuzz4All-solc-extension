pragma solidity ^0.8.0;
contract Example5 {
    event NewValue(uint newValue);
    uint public value;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example5() external onlyFromCaller {
        value = value + 10;
        emit NewValue(value);
    }
}
