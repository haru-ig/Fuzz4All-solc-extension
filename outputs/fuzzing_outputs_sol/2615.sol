pragma solidity ^0.8.0;
contract myContract {
    uint public fallbackValue;
    function greet() public {
        fallbackValue = 1;
    }
}
