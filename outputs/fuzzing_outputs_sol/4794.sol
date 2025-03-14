pragma solidity ^0.8.0;
contract MutateSemantically {
    function update() public {
        uint oldInt = 42;
        uint newInt = oldInt;
    }
}
