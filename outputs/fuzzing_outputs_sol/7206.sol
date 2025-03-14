pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }

    fallback() public payable {
        valueFromCaller = msg.sender;
    }
}
