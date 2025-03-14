pragma solidity ^0.8.0;
contract Example4 {
    constructor(uint public payValue) public {
        valueFromCaller = msg.sender;
    }
    function setvalue(address payable valueFromCaller_) public {
        valueFromCaller = valueFromCaller_;
    }
}
