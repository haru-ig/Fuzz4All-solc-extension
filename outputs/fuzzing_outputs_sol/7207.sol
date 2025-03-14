pragma solidity ^0.8.0;
contract Example4_0 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    function example4() public onlyOwner {
        valueFromCaller = msg.sender;
    }
}
