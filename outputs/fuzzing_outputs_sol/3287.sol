pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    function fallback() public payable {
        x += 3;
    }
    function lowLevel() public {
        x += 5;
    }
    function highLevel() public {
        x += 6;
    }
}
