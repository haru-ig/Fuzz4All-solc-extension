pragma solidity ^0.8.0;
contract MutateSyntactically {
    function foo() public {
        uint oldInt = 42;
        uint oldNumber = oldInt;
        uint newInt = oldNumber + 1;
    }
}
