pragma solidity ^0.8.0;
contract Counter {
    uint internal counter;
    function increment() public payable {
        counter++;
    }
    function incrementWithFallback(uint129 value) public {
        counter++;
    }
}
