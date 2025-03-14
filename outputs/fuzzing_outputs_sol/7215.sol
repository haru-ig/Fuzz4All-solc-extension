pragma solidity ^0.8.0;
contract Example5 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example5() public payable {
        valueFromCaller = msg.sender;
    }
}
