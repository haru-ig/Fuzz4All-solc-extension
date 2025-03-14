pragma solidity ^0.8.0;
contract NoFallbackFunction {
    uint public value;
    uint private valueFromCaller;
    function example6() public {
        value = msg.value;
    }
    receive () external payable {
        valueFromCaller = msg.value;
    }
}
