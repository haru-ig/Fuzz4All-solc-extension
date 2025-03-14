pragma solidity ^0.8.0;
contract ValueMutated {
    address public valueFromCaller;
    function example5() public payable {
        valueFromCaller = msg.sender;
    }
    receive () external payable {
        valueFromCaller = msg.sender;
    }
}
