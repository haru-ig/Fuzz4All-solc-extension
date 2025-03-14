pragma solidity ^0.8.0;
contract Example4Old {
    address public valueFromCaller;
    function example4Old() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
