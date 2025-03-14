pragma solidity ^0.8.0;
contract Example4Mutation {
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public payable onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
contract Example5 {
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example() public {
        valueFromCaller = msg.sender;
    }
}
contract Caller{
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function call() public payable onlyFromCaller {
        address myAddress = Example4(msg.sender).example4.value(msg.value)("");
        address myAddress2 = Example4Mutation(msg.sender).example mutation.value(msg.value)("");
    }
}
