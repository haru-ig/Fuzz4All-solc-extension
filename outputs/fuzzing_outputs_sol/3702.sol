pragma solidity ^0.8.0;
contract Example3
{
    uint public valueBeforeFallback;
    function() public {
        valueBeforeFallback = msg.value + 174;
        this.fallback();
    }
    fallback () public payable {
        valueBeforeFallback = msg.value + 10;
        msg.sender.transfer(valueBeforeFallback);
        valueBeforeFallback = 100;
    }
}
contract Example4Fallback {
    uint public fallbackValue;
    uint public errorValue;
    function setError(uint x) public {
        errorValue = x;
    }
    function call() public {
        fallbackValue = 100;
        msg.sender.transfer(fallbackValue);
    }
    receive() external payable {
        fallbackValue = fallbackValue + 1000;
        errorValue = errorValue + 1;
    }
    fallback () public returns (uint) {
        return fallbackValue;
    }
}
