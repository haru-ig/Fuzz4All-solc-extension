pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    constructor() public {
        valueFromCaller = msg.sender;
    }
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    receive() public payable {
        valueFromCaller = msg.sender;
    }
}
