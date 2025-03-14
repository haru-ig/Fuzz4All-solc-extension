pragma solidity ^0.8.0;
contract TestCaller2 {
    uint public constant value = 9;
    constructor () public {}
    fallback() public {

        uint myValue = value;

        uint txCount = x.sendValueAndReceiveValueWithGas(to, value, block.timestamp);

        if (value!= myValue.add(txCount)) revert("value not added");
    }
}
