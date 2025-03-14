pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public payable onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
